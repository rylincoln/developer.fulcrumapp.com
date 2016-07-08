---
layout: default
section: expressions
title: "CHOICEVALUES"
description: "Returns the selected values for a choice field or classification field"
category: section
permalink: /expressions/reference/choicevalues/
---

### Parameters

`field` Object (__required__) - The choice field or classification field

### Returns

String - the selected value

### Examples

```js
CHOICEVALUES($choice_field)

// returns [Red,Green,Blue]
```