---
layout: default
section: query_api
title: "Determine the last time each user sync'd"
category: section
tags:
  - INNER JOIN
  - DISTINCT
  - ORDER BY
---

```sql
SELECT
  memberships.name,
  (SELECT FCM_FormatTimestamp(MAX(closed_at), 'America/New_York')
   FROM changesets WHERE closed_by_id=memberships.user_id) AS last_sync
FROM memberships
ORDER BY name;
```
