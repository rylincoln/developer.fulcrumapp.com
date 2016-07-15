---
layout: default
section: query_api
order: 3
title: "Query API Examples"
description: "Examples for the Fulcrum Query API"
category: section
---

### Check if a multi choice field contains *ANY* given values (and possibly additional values not given in the query)

```sql
SELECT materials FROM Buildings
WHERE
  materials && ARRAY['brick', 'glass', 'stone']

-- returns rows where *any of* brick, glass, or stone are selected
```

### Check if a multi choice field contains *ALL* given values (and possibly additional values not given in the query)

```sql
SELECT materials FROM Buildings
WHERE
  materials @> ARRAY['brick', 'glass']

-- returns rows where brick *and* glass were selected
```

### Check if a multi choice field contains *EXACTLY* given values (and not any additional values)

```sql
SELECT materials FROM Buildings
WHERE
  materials <@ ARRAY['brick', 'glass', 'wood'] AND
  materials @> ARRAY['brick', 'glass', 'wood']

-- returns rows where *only* brick, glass, and wood are selected
```

### Get the distinct values used in a multiple choice field

```sql
SELECT DISTINCT unnest(materials) AS choice FROM Buildings ORDER BY unnest(materials);
```

### Get the distinct values used in a single choice field

```sql
SELECT DISTINCT choice_field FROM Buildings ORDER BY choice_field;
```

### Join linked records using record link fields

An app named "Rooms" contains a record link field to the "Buildings" app. This query brings in the building
name for each room.

```sql
SELECT building.name, source.* FROM "Rooms" source
INNER JOIN "Rooms/building" link ON source._record_id = link._source_record_id
INNER JOIN "Buildings" building ON link._linked_record_id = building._record_id

-- OR if it's a single choice record link you can simplify it and remove the intermediate join table

SELECT building.name, source.* FROM "Rooms" source
INNER JOIN "Buildings" building ON source.building[1] = building._record_id
```

### Fetch users

```sql
SELECT name, email FROM memberships;
```

### Fetch longest videos

```sql
SELECT video_id, st_length(geometry::geography) AS track_length_meters
FROM videos
WHERE geometry IS NOT NULL AND st_length(geometry) > 0
ORDER BY ST_Length(geometry) DESC;
```

### Fetch distance between photos and record

```sql
SELECT p.record_id
	,p.photo_id
	,ST_Distance(p.geometry::GEOGRAPHY, i._geometry::GEOGRAPHY) AS photo_record_distance_meters
FROM photos p
INNER JOIN "Park Inventory" i ON p.record_id = i._record_id;
```

### Fetch distance between repeatable and record

```sql
SELECT f._child_record_id
	,f._parent_id
	,ST_Distance(f._geometry::GEOGRAPHY, i._geometry::GEOGRAPHY) AS repeatable_record_distance_meters
FROM "Park Inventory/park_features" f
INNER JOIN "Park Inventory" i ON f._parent_id = i._record_id;
```

### Fetch total photo storage for a single app

```sql
SELECT ROUND(SUM(file_size) / 1000000) AS photo_megabytes
FROM photos
WHERE form_id = '4e725cd6-2cc1-45be-9783-123fb07dff42';
```

### Fetch the most common device make/models for photos from the EXIF data

```sql
SELECT exif::json->>'make' AS Make, exif::json->>'model' AS Model, COUNT(1) AS Count
FROM photos
WHERE (exif::json->>'make') IS NOT NULL
GROUP BY exif::json->>'make', exif::json->>'model'
ORDER BY COUNT(1) DESC;
```

### Fetch how many times each user has sync'd

```sql
SELECT email, COUNT(1) AS total_sync_count
FROM memberships
INNER JOIN changesets ON memberships.user_id=changesets.closed_by_id
GROUP BY memberships.email
ORDER BY COUNT(1) DESC;
```

### Determine the last time each user sync'd

```sql
SELECT DISTINCT ON (name) name, FCM_FormatTimestamp(closed_at, 'America/New_York') AS last_sync FROM memberships
INNER JOIN changesets ON memberships.user_id=changesets.closed_by_id
ORDER BY name, closed_at DESC
```

### Get a count of records updated by month

```sql
SELECT to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY') AS month
	,COUNT(to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')) AS records_updated
FROM "Park Inventory"
GROUP BY to_char(_updated_at, 'YYYY') || '-' || to_char(_updated_at, 'mm')
	,to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')
ORDER BY to_char(_updated_at, 'YYYY') || '-' || to_char(_updated_at, 'mm') DESC
```

### Get a count of records updated by week

```sql
SELECT date_trunc('week', _updated_at)::DATE || ' - ' || (date_trunc('week', _updated_at) + '6 days')::DATE AS week
	,to_char(date_trunc('week', _updated_at), 'Month') || ' ' || to_char(date_trunc('week', _updated_at), 'dd') || ', ' || to_char(date_trunc('week', _updated_at), 'YYYY') || ' - ' || to_char(date_trunc('week', _updated_at) + '6 days', 'Month') || ' ' || to_char(date_trunc('week', _updated_at) + '6 days', 'dd') || ', ' || to_char(date_trunc('week', _updated_at) + '6 days', 'YYYY') AS week_formatted
	,COUNT(*) AS records_updated
FROM "Park Inventory"
GROUP BY date_trunc('week', _updated_at)
ORDER BY date_trunc('week', _updated_at) DESC
```

### Get a count of records updated by day

```sql
SELECT to_char(date_trunc('day', _updated_at), 'YYYY/MM/DD') AS date
	,COUNT(*) AS records_updated
FROM "Park Inventory"
GROUP BY date_trunc('day', _updated_at)
ORDER BY date_trunc('day', _updated_at) DESC
```

### Get a daily count of records updated by user

```sql
SELECT m.name, to_char(date_trunc('day', i._updated_at), 'YYYY/MM/DD') AS date
	,COUNT(*) AS records_updated
FROM "Park Inventory" i
INNER JOIN memberships m ON i._updated_by_id = m.user_id
GROUP BY date_trunc('day', i._updated_at), m.name
ORDER BY date_trunc('day', _updated_at) DESC
```

### Fetching record data that can be used to build API responses/requests

Note that this data still requires a few changes before it's in the correct API format.

- Parse `form_values` into an object
- Parse `latitude`, `longitude`, `speed`, `altitude`, `course`, `horizontal_accuracy`, and `vertical_accuracy` into JSON numbers (the Query API always returns strings [Explanation of Why])
- Parse `version` into an integer (the Query API always returns strings)

Also, you can omit the joins and the `created_by`, `updated_by` and `assigned_to` from the output if you don't need it. It's only shown
here for demonstration of returning _all_ of the data necessary to construct a complete API response.

```sql
SELECT
  _status AS status,
  _version AS version,
  _record_id AS id,
  to_char(_server_created_at, 'YYYY-MM-DD"T"HH24:MI:SS"Z"') AS created_at,
  to_char(_server_updated_at, 'YYYY-MM-DD"T"HH24:MI:SS"Z"') AS updated_at,
  to_char(_created_at, 'YYYY-MM-DD"T"HH24:MI:SS"Z"') AS client_created_at,
  to_char(_updated_at, 'YYYY-MM-DD"T"HH24:MI:SS"Z"') AS client_updated_at,
  _created_by_id AS created_by_id,
  created_by.name AS created_by,
  _updated_by_id AS updated_by_id,
  updated_by.name AS updated_by,
  '9bc7d7b4-f36e-4e04-bcf9-205ae874709f'::text AS form_id,
  _project_id AS project_id,
  _assigned_to_id AS assigned_to_id,
  assigned_to.name AS assigned_to,
  _form_values AS form_values,
  _latitude AS latitude,
  _longitude AS longitude,
  _altitude AS altitude,
  _speed AS speed,
  _course AS course,
  _horizontal_accuracy AS horizontal_accuracy,
  _vertical_accuracy AS vertical_accuracy
FROM "Buildings/_full" records
LEFT OUTER JOIN memberships created_by ON records._created_by_id = created_by._user_id
LEFT OUTER JOIN memberships updated_by ON records._updated_by_id = updated_by._user_id
LEFT OUTER JOIN memberships assigned_to ON records._assigned_to_id = assigned_to._user_id;
```
