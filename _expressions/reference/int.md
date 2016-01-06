---
layout: default
section: expressions
title: "INT"
description: "Rounds a number down to the nearest integer that is less than or equal to it."
category: section
permalink: /expressions/reference/int/
---

### Parameters

`value` Number (__required__) - Value to round down to the nearest integer.

### Returns

Number

### Examples

~~~
INT(34.24)

// returns 34
~~~
{: .language-js}


~~~
INT(-10.49)

// returns -11
~~~
{: .language-js}