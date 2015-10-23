---
layout: default
section: expressions
title: "REPEATABLEVALUES"
description: "Return a specific field from multiple repeatable items"
category: section
permalink: /expressions/reference/repeatablevalues/
---

## REPEATABLEVALUES

Return a specific field from multiple repeatable items

### Parameters

`repeatableVariable` Object (__required__) - The repeatable field variable

`dataName` String (__required__) - The data name of the field to extract from each repeatable item

### Returns

Array - An array of values of the `dataName` field from each item

### Examples

~~~
REPEATABLEVALUES($repeatable_field, 'cost')

// returns [1,2,3]
~~~
{: .language-js}