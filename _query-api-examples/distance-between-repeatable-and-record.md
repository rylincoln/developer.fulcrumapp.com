---
layout: default
section: query_api
title: "Fetch distance between repeatable and record"
category: section
tags:
  - INNER JOIN
  - ST_Distance
  - casting
---

```sql
SELECT f._child_record_id
	,f._parent_id
	,ST_Distance(f._geometry::GEOGRAPHY, i._geometry::GEOGRAPHY) AS repeatable_record_distance_meters
FROM "Park Inventory/park_features" f
INNER JOIN "Park Inventory" i ON f._parent_id = i._record_id;
```
