---
layout: default
section: expressions
title: "PRODUCT"
description: "Returns the result of multiplying a series of numbers together."
category: section
permalink: /expressions/reference/product/
---

### Parameters

`var_args_values` Number (__required__) - Values to multiply together.

### Returns

Number

### Examples

~~~
PRODUCT(4, 18, 3)

// returns 216
~~~
{: .language-js}


~~~
PRODUCT(23, 5, 0)

// returns 0
~~~
{: .language-js}