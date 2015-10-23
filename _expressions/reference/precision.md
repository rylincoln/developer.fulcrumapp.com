---
layout: default
section: expressions
title: "PRECISION"
description: "Returns the precision of a number"
category: section
permalink: /expressions/reference/precision/
---

## PRECISION

Returns the precision of a number

### Parameters

`value` Number (__required__) - a number

### Returns

Number - the number of decimal places

### Examples

~~~
PRECISION(1.333)

// returns 3
~~~
{: .language-js}


~~~
PRECISION(1.3)

// returns 1
~~~
{: .language-js}


~~~
PRECISION(1)

// returns 0
~~~
{: .language-js}