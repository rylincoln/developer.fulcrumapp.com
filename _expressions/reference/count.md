---
layout: default
section: expressions
title: "COUNT"
description: "Returns a count of the number of numeric values in a dataset."
category: section
permalink: /expressions/reference/count/
---

### Parameters

`values` Array (__required__) - an array of numbers

### Returns

Number - the count of numeric values in the array

### Examples

~~~
COUNT([11, 22, 33, 44, 55])

// returns 5
~~~
{: .language-js}


~~~
// since it only counts numeric arguments
COUNT(['a', 'b', 'c', 'd', 'e'])

// returns 0
~~~
{: .language-js}