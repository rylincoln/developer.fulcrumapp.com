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
  a.NAME,
  a.type,
  b.STATUS,
  b.description,
  c.NAME AS created_by,
  to_char(b.created_at AT TIME ZONE 'CST', 'DD Mon YYYY HH12:MI AM') AS created_at,
  to_char(b.updated_at AT TIME ZONE 'CST', 'DD Mon YYYY HH12:MI AM') AS updated_at,
  c.email,
  to_char(d.last_sync AT TIME ZONE 'CST', 'DD Mon YYYY HH12:MI AM') AS most_recent_record_CST,
  d.thecount AS num_records
FROM
  tables a
LEFT JOIN
  forms b ON a.form_id = b.form_id
LEFT JOIN
  memberships c ON b.created_by_id = c.user_id
LEFT JOIN (
	SELECT
    forms.form_id,
    MAX(changesets.updated_at) AS last_sync,
    SUM(changesets.number_of_creates) - SUM(changesets.number_of_deletes) AS thecount
	FROM
    forms
	LEFT JOIN
    changesets ON forms.form_id = changesets.form_id
	GROUP BY
    forms.form_id
	) d ON d.form_id = a.form_id
WHERE
  type = 'form' AND b.STATUS = 'active'
ORDER BY
  d.last_sync AT TIME ZONE 'CST';
```
