---
layout: default
section: expressions
title: "ISSELECTED"
description: "Checks whether a given choice is selected for a choice field or classification field"
category: section
permalink: /expressions/reference/isselected/
---

### Parameters

`value` * (__required__) - The choice field, classification field to check for a value being selected

`choice` String (__required__) - The choice value to check for

### Returns

Boolean

### Examples

~~~
// $choice_field has Red, Green, and Blue selected
ISSELECTED($choice_field, 'Red')

// returns true
~~~
{: .language-js}


~~~
// $choice_field has Red, Green, and Blue selected
ISSELECTED($choice_field, 'Orange')

// returns false
~~~
{: .language-js}