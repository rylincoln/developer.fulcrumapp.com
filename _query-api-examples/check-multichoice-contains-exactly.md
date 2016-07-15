---
layout: default
section: query_api
title: "Check if a multi choice field contains EXACTLY given values"
description: "and not any additional values"
category: section
---

```sql
SELECT materials FROM Buildings
WHERE
  materials <@ ARRAY['brick', 'glass', 'wood'] AND
  materials @> ARRAY['brick', 'glass', 'wood']

-- returns rows where *only* brick, glass, and wood are selected
```
