---
layout: default
section: query_api
title: "Join linked records using record link fields"
category: section
tags:
  - JOIN
---
An app named `Rooms` contains a record link field to the `Buildings` app. This query brings in the building name for each room.

```sql
SELECT
  building.name,
  source.*
FROM "Rooms" source
INNER JOIN "Rooms/building" link ON source._record_id = link.source_record_id
INNER JOIN "Buildings" building ON link.linked_record_id = building._record_id
```

```sql
-- OR if it's a single choice record link you can simplify it and remove the intermediate join table

SELECT
  building.name,
  source.*
FROM "Rooms" source
INNER JOIN "Buildings" building ON source.building[1] = building._record_id
```
