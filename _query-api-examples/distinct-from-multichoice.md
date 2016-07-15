---
layout: default
section: query_api
title: "Get the distinct values used in a multiple choice field"
category: section
tags:
  - DISTINCT
---

```sql
SELECT DISTINCT unnest(materials) AS choice FROM Buildings ORDER BY unnest(materials);
```
