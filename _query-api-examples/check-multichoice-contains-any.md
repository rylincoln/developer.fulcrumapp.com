---
layout: default
section: query_api
title: "Check if a multi choice field contains ALL given values"
category: section
tags:
  - jsonb
---
Check if a multi choice field contains ALL given values...and possibly additional values not given in the query.

```sql
SELECT materials FROM Buildings
WHERE
  materials @> ARRAY['brick', 'glass']

-- returns rows where brick *and* glass were selected
```
