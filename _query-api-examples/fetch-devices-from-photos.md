---
layout: default
section: query_api
title: "Fetch the most common device make/models for photos from the EXIF data"
category: section
tags:
  - casting
  - COUNT
  - GROUP BY
  - ORDER BY
---

```sql
SELECT exif::json->>'make' AS Make, exif::json->>'model' AS Model, COUNT(1) AS Count
FROM photos
WHERE (exif::json->>'make') IS NOT NULL
GROUP BY exif::json->>'make', exif::json->>'model'
ORDER BY COUNT(1) DESC;
```
