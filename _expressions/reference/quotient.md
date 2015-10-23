---
layout: default
section: expressions
title: "QUOTIENT"
description: "Returns the result of dividing one number by another."
category: section
permalink: /expressions/reference/quotient/
---

## QUOTIENT

Returns the result of dividing one number by another.

### Parameters

`dividend` Number (__required__) - The number to divide.

`divisor` Number (__required__) - The number to be divided by.

### Returns

Number

### Examples

~~~
QUOTIENT(30, 5)

// returns 6
~~~
{: .language-js}


~~~
QUOTIENT(0, 10)

// returns 0
~~~
{: .language-js}


~~~
QUOTIENT(45, 0)

// returns NaN
~~~
{: .language-js}