---
layout: default
section: query_api
title: "Fetch total photo storage for a single app"
category: section
tags:
  - ROUND
  - SUM
---

```sql
SELECT ROUND(SUM(file_size) / 1000000) AS photo_megabytes
FROM photos
WHERE form_id = '4e725cd6-2cc1-45be-9783-123fb07dff42';
```
