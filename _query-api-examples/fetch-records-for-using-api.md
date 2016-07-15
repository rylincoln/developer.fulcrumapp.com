---
layout: default
section: query_api
title: "Fetching record data that can be used to build API responses/requests"
category: section
tags:
  - casting
  - to_char
  - LEFT OUTER JOIN
---
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
