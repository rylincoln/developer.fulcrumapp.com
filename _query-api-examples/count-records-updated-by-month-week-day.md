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
Count of records updated, grouped by month

```sql
SELECT
  to_char(_updated_at, 'Month YYYY') AS month,
  COUNT(to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')) AS records_updated
FROM
  "Park Inventory"
GROUP BY
  to_char(_updated_at, 'YYYY-mm'),
  to_char(_updated_at, 'Month YYYY')
ORDER BY
  to_char(_updated_at, 'YYYY-mm') DESC;
```

Count of records updated, grouped by month and member

```sql
SELECT
  m.name AS name,
  to_char(_updated_at, 'Month YYYY') AS month,
  COUNT(to_char(_updated_at, 'Month') || ' ' || to_char(_updated_at, 'YYYY')) AS records_updated
FROM
  "Park Inventory" r
INNER JOIN memberships m ON r._updated_by_id = m.user_id
GROUP BY
  m.name,
  to_char(_updated_at, 'YYYY-mm'),
  to_char(_updated_at, 'Month YYYY')
ORDER BY
  m.name,
  to_char(_updated_at, 'YYYY-mm') DESC;
```

Count of records updated, grouped by week

```sql
SELECT
  date_trunc('week', _updated_at)::DATE || ' - ' || (date_trunc('week', _updated_at) + '6 days')::DATE AS week,
  to_char(date_trunc('week', _updated_at), 'Month') || ' ' || to_char(date_trunc('week', _updated_at), 'dd') || ', ' || to_char(date_trunc('week', _updated_at), 'YYYY') || ' - ' || to_char(date_trunc('week', _updated_at) + '6 days', 'Month') || ' ' || to_char(date_trunc('week', _updated_at) + '6 days', 'dd') || ', ' || to_char(date_trunc('week', _updated_at) + '6 days', 'YYYY') AS week_formatted,
  COUNT(*) AS records_updated
FROM
  "Park Inventory"
GROUP BY
  date_trunc('week', _updated_at)
ORDER BY
  date_trunc('week', _updated_at) DESC;
```

Count of records updated, grouped by week and member

```sql
SELECT
  m.name,
  date_trunc('week', _updated_at)::DATE || ' - ' || (date_trunc('week', _updated_at) + '6 days')::DATE AS week,
  to_char(date_trunc('week', _updated_at), 'Month') || ' ' || to_char(date_trunc('week', _updated_at), 'dd') || ', ' || to_char(date_trunc('week', _updated_at), 'YYYY') || ' - ' || to_char(date_trunc('week', _updated_at) + '6 days', 'Month') || ' ' || to_char(date_trunc('week', _updated_at) + '6 days', 'dd') || ', ' || to_char(date_trunc('week', _updated_at) + '6 days', 'YYYY') AS week_formatted,
  COUNT(*) AS records_updated
FROM
  "Park Inventory" r
  INNER JOIN memberships m ON r._updated_by_id = m.user_id
GROUP BY
  m.name,
  date_trunc('week', _updated_at)
ORDER BY
  m.name,
  date_trunc('week', _updated_at) DESC;
```

Count of records updated, grouped by day

```sql
SELECT
  to_char(date_trunc('day', _updated_at), 'YYYY-MM-DD') AS date,
  COUNT(*) AS records_updated
FROM
  "Park Inventory"
GROUP BY
  date_trunc('day', _updated_at)
ORDER BY
  date_trunc('day', _updated_at) DESC;
```

Count of records updated, grouped by day and member

```sql
SELECT
  m.name,
  to_char(date_trunc('day', _updated_at), 'YYYY-MM-DD') AS date,
  COUNT(*) AS records_updated
FROM
  "Park Inventory" r
INNER JOIN memberships m ON r._updated_by_id = m.user_id
GROUP BY
  m.name,
  date_trunc('day', _updated_at)
ORDER BY
  m.name,
  date_trunc('day', _updated_at) DESC;
```
