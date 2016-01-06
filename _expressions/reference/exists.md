---
layout: default
section: expressions
title: "EXISTS"
description: "Tests whether a value exists"
category: section
permalink: /expressions/reference/exists/
---

### Parameters

`var_args_values` Object (__required__) - The value(s) to check for existence

### Returns

Boolean

### Examples

~~~
EXISTS(1)

// returns true
~~~
{: .language-js}


~~~
EXISTS(null)

// returns false
~~~
{: .language-js}


~~~
EXISTS([])

// returns false
~~~
{: .language-js}