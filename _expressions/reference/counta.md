---
layout: default
section: expressions
title: "COUNTA"
description: "Returns a count of values in a dataset."
category: section
permalink: /expressions/reference/counta/
---

## COUNTA

Returns a count of values in a dataset.

### Parameters

`value` Array (__required__) - an array of values

### Returns

Number - the count of items in the array

### Examples

~~~
COUNTA([11, 22, 33, 44, 55])

// returns 5
~~~
{: .language-js}


~~~
// since it counts all arguments
COUNTA(['a', 'b', 'c', 'd', 'e'])

// returns 5
~~~
{: .language-js}