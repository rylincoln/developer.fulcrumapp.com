---
layout: default
section: expressions
title: "FIELDTYPE"
description: "Returns the field type of a field by its data name"
category: section
permalink: /expressions/reference/fieldtype/
---

### Parameters

`dataName` String (__required__) - The data name of the field

### Returns

String

### Examples

```js
FIELDTYPE('items')

// returns "Repeatable"
```


```js
FIELDTYPE('name')

// returns "TextField"
```