---
layout: default
section: query_api
title: "Get a count of records updated by month/week/day"
category: section
tags:
  - COUNT
  - GROUP BY
  - ORDER BY
---
By month

```sql
SELECT to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY') AS month
	,COUNT(to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')) AS records_updated
FROM "Park Inventory"
GROUP BY to_char(_updated_at, 'YYYY') || '-' || to_char(_updated_at, 'mm')
	,to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')
ORDER BY to_char(_updated_at, 'YYYY') || '-' || to_char(_updated_at, 'mm') DESC
```

By week

```sql
SELECT date_trunc('week', _updated_at)::DATE || ' - ' || (date_trunc('week', _updated_at) + '6 days')::DATE AS week
	,to_char(date_trunc('week', _updated_at), 'Month') || ' ' || to_char(date_trunc('week', _updated_at), 'dd') || ', ' || to_char(date_trunc('week', _updated_at), 'YYYY') || ' - ' || to_char(date_trunc('week', _updated_at) + '6 days', 'Month') || ' ' || to_char(date_trunc('week', _updated_at) + '6 days', 'dd') || ', ' || to_char(date_trunc('week', _updated_at) + '6 days', 'YYYY') AS week_formatted
	,COUNT(*) AS records_updated
FROM "Park Inventory"
GROUP BY date_trunc('week', _updated_at)
ORDER BY date_trunc('week', _updated_at) DESC
```

By day

```sql
SELECT to_char(date_trunc('day', _updated_at), 'YYYY/MM/DD') AS date
	,COUNT(*) AS records_updated
FROM "Park Inventory"
GROUP BY date_trunc('day', _updated_at)
ORDER BY date_trunc('day', _updated_at) DESC
```
