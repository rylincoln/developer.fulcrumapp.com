---
layout: default
section: expressions
title: "MOD"
description: "Returns the result of the modulo operator, the remainder after a division operation."
category: section
permalink: /expressions/reference/mod/
---

### Parameters

`dividend` Number (__required__) - The number to be divided to find the remainder.

`divisor` Number (__required__) - The number to divide by.

### Returns

Number

### Examples

~~~
MOD(10, 3)

// returns 1
~~~
{: .language-js}


~~~
MOD(10, 10)

// returns 0
~~~
{: .language-js}