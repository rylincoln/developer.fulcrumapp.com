---
layout: default
section: expressions
title: "RANDBETWEEN"
description: "Returns a random integer between two values."
category: section
permalink: /expressions/reference/randbetween/
---

## RANDBETWEEN

Returns a random integer between two values.

### Parameters

`value` Number (__required__) - Low value of the range.

`value` Number (__required__) - High value of the range.

### Returns

Number

### Examples

~~~
4 < RANDBETWEEN(4, 9) < 9

// returns true
~~~
{: .language-js}