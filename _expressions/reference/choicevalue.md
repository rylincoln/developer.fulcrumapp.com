---
layout: default
section: expressions
title: "CHOICEVALUE"
description: "Returns the selected value for a choice field or classification field"
category: section
permalink: /expressions/reference/choicevalue/
---

### Parameters

`field` Object (__required__) - The choice field or classification field

### Returns

String - the selected value

### Examples

```js
CHOICEVALUE($choice_field)

// returns "Red"
```