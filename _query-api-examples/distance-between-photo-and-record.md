---
layout: default
section: query_api
title: "Fetch distance between photos and record"
category: section
tags:
  - INNER JOIN
  - ST_Distance
  - casting
---

```sql
SELECT p.record_id
	,p.photo_id
	,ST_Distance(p.geometry::GEOGRAPHY, i._geometry::GEOGRAPHY) AS photo_record_distance_meters
FROM photos p
INNER JOIN "Park Inventory" i ON p.record_id = i._record_id;
```
