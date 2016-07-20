---
layout: default
section: query_api
title: "Fetch how many times each user has sync'd"
category: section
tags:
  - INNER JOIN
  - COUNT
  - GROUP BY
  - ORDER BY
---

```sql
SELECT email, COUNT(1) AS total_sync_count
FROM memberships
INNER JOIN changesets ON memberships.user_id = changesets.closed_by_id
GROUP BY memberships.email
ORDER BY COUNT(1) DESC;
```
