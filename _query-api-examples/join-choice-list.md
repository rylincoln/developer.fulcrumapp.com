---
layout: default
section: query_api
title: "Join pre-defined choice list to fetch label"
category: section
tags:
  - JOIN
  - choice list
---
An app named `Tree Inventory` contains a choice field with a data name of `species`, which pulls from a pre-defined choice list of tree species. The `Tree Species` choice list contains the common species name as the label (Sugar Maple) and the scientific name as the value (Acer saccharum). This query joins the record values from Tree Inventory species column with the Tree Species choice list value to return the label.

```sql
SELECT app.species AS scientific_name, list.label AS common_name FROM "Tree Inventory" app
LEFT JOIN (SELECT
  item->>'label' AS label,
  item->>'value' AS value
FROM (
  SELECT
    json_array_elements(items::json) AS item
  FROM choice_lists
  WHERE name = 'Tree Species'
) sub) list
ON app.species = list.value
```

Alternatively, if you have a relatively small choice list, you can use the SQL CASE expression to get the value you want.

```sql
SELECT
  CASE
    WHEN species = 'Acer rubrum' THEN 'Red Maple'
    WHEN species = 'Acer saccharinum' THEN 'Silver Maple'
    WHEN species = 'Acer pensylvanicum' THEN 'Striped Maple'
    WHEN species = 'Acer saccharum' THEN 'Sugar Maple'
    ELSE species
  END AS species
FROM "Tree Inventory"
```
