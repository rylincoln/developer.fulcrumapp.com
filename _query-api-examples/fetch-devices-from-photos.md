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
SELECT make, model, COUNT(1) AS count
FROM photos
WHERE make IS NOT NULL
GROUP BY make, model
ORDER BY COUNT(1) DESC;
```
