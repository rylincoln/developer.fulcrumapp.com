---
layout: default
section: expressions
title: "MEDIAN"
description: "Returns the median value in a set of numeric values."
category: section
permalink: /expressions/reference/median/
---

## MEDIAN

Returns the median value in a set of numeric values.

### Parameters

`var_args_values` Number (__required__) - Values in which to find the median value.

### Returns

Number

### Examples

~~~
MEDIAN(15,2,9,67,22)

// returns 15
~~~
{: .language-js}


~~~
MEDIAN(1,10,4)

// returns 4
~~~
{: .language-js}