---
layout: default
section: query_api
title: "Get a daily count of records updated by user"
category: section
tags:
  - COUNT
  - INNER JOIN
  - GROUP BY
  - ORDER BY
---

```sql
SELECT m.name, to_char(date_trunc('day', i._updated_at), 'YYYY/MM/DD') AS date
	,COUNT(*) AS records_updated
FROM "Park Inventory" i
INNER JOIN memberships m ON i._updated_by_id = m.user_id
GROUP BY date_trunc('day', i._updated_at), m.name
ORDER BY date_trunc('day', i._updated_at) DESC
```
