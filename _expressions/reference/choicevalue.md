---
layout: default
section: expressions
title: "CHOICEVALUE"
description: "Returns the selected value for a choice field or classification field"
category: section
permalink: /expressions/reference/choicevalue/
---

## CHOICEVALUE

Returns the selected value for a choice field or classification field

### Parameters

`field` Object (__required__) - The choice field or classification field

### Returns

String - the selected value

### Examples

~~~
CHOICEVALUE($choice_field)

// returns Red
~~~
{: .language-js}