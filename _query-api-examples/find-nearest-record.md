---
layout: default
section: query_api
title: "Find the nearest record from a specific location"
category: section
tags:
  - distance
  - ORDER BY
---
Select the nearest record from a location specified by latitude and longitude.

```sql
SELECT name
FROM "Demolition Sites" f
ORDER BY f._geometry <-> ST_SetSRID(ST_Point(-82.635, 27.771), 4326)
LIMIT 1;

-- returns the nearest demolition site from a specific latitude and longitude
```
