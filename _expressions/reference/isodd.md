---
layout: default
section: expressions
title: "ISODD"
description: "Checks whether the provided value is an odd number."
category: section
permalink: /expressions/reference/isodd/
---

## ISODD

Checks whether the provided value is an odd number.

### Parameters

`value` Number (__required__) - The value to be verified as odd.

### Returns

Boolean

### Examples

~~~
ISODD(4)

// returns false
~~~
{: .language-js}


~~~
ISODD(5)

// returns true
~~~
{: .language-js}


~~~
ISODD(3.12)

// returns true
~~~
{: .language-js}