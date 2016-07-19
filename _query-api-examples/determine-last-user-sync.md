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
SELECT DISTINCT ON (name) name, FCM_FormatTimestamp(closed_at, 'America/New_York') AS last_sync FROM memberships
INNER JOIN changesets ON memberships.user_id=changesets.closed_by_id
ORDER BY name, closed_at DESC
```
