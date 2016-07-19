---
layout: default
section: query_api
title: "Check if a multi choice field contains ANY given values"
category: section
tags:
  - jsonb
---
Check if a multi choice field contains ANY given values...and possibly additional values not given in the query.

```sql
SELECT materials FROM Buildings
WHERE
  materials && ARRAY['brick', 'glass', 'stone']

-- returns rows where *any of* brick, glass, or stone are selected
```
