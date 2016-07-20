---
layout: default
section: query_api
title: "Fetch longest videos"
category: section
tags:
  - ORDER BY
  - ST_Length
  - casting
---

```sql
SELECT video_id, ST_Length(geometry::geography) AS track_length_meters
FROM videos
WHERE geometry IS NOT NULL AND ST_Length(geometry) > 0
ORDER BY ST_Length(geometry) DESC;
```
