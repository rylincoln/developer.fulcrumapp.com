---
layout: default
section: expressions
title: "NUMS"
description: "Converts multiple parameters to an array of numbers"
category: section
permalink: /expressions/reference/nums/
---

## NUMS

Converts multiple parameters to an array of numbers

### Parameters

`var_args_values` * (__required__) - the values to convert to numbers

### Returns

Number

### Examples

~~~
NUMS('1' ,'2', '3')

// returns [1,2,3]
~~~
{: .language-js}


~~~
NUMS('1' ,'2', 'a')

// returns [1,2,NaN]
~~~
{: .language-js}