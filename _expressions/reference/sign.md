---
layout: default
section: expressions
title: "SIGN"
description: "Returns the sign of a given input number. -1 if negative, 1 if positive, 0 if zero."
category: section
permalink: /expressions/reference/sign/
---

## SIGN

Returns the sign of a given input number. `-1` if negative, `1` if positive, `0` if zero.

### Parameters

`value` Number (__required__) - The value to return the sign of.

### Returns

Number

### Examples

~~~
SIGN(43)

// returns 1
~~~
{: .language-js}


~~~
SIGN(-3)

// returns -1
~~~
{: .language-js}