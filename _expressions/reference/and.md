---
layout: default
section: expressions
title: "AND"
description: "Returns true if all of the provided arguments are logically true, and false if any of the provided arguments are logically false."
category: section
permalink: /expressions/reference/and/
---

### Parameters

`var_args_expressions` * (__required__) - An expression or reference that represents some logical value, i.e. `true` or `false`, or an expression that can be converted to a logical value.

### Returns

Boolean

### Examples

~~~
AND(1, 0, false)

// returns false
~~~
{: .language-js}


~~~
AND(3 + 3 == 6, 10 + 2 == 12)

// returns true
~~~
{: .language-js}