---
layout: default
section: query_api
title: "Get a summary of your forms"
category: section
tags:
  - JOIN
---
This example was written by an account owner to get a handle on who is creating apps the most, which ones are actually being used, when was the last time it was used, and who was the last to sync.

```sql
SELECT
  form.name,
  form.status,
  form.description,
  users.name AS created_by,
  FCM_FormatTimestamp(form.created_at, 'US/Eastern') AS created_at,
  FCM_FormatTimestamp(form.updated_at, 'US/Eastern') AS updated_at,
  users.email,
  FCM_FormatTimestamp(summary.last_sync, 'US/Eastern') AS most_recent_record,
  summary.num_records AS num_records
FROM
  forms form
LEFT JOIN memberships users ON form.created_by_id = users.user_id
LEFT JOIN (
  SELECT
    changesets.form_id,
    MAX(changesets.updated_at) AS last_sync,
    SUM(changesets.number_of_creates) - SUM(changesets.number_of_deletes) AS num_records
  FROM
    changesets
  GROUP BY
    changesets.form_id
) summary ON form.form_id = summary.form_id
WHERE
  form.status = 'active'
ORDER BY
  summary.last_sync;
```
