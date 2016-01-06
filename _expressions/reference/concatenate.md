---
layout: default
section: expressions
title: "CONCATENATE"
description: "Returns the concatenation of multiple values."
category: section
permalink: /expressions/reference/concatenate/
---

### Parameters

`var_args_values` String (__required__) - Strings to append in sequence.

### Returns

String

### Examples

~~~
CONCATENATE("This ", "is ", "a ", "sentence.")

// returns This is a sentence.
~~~
{: .language-js}


~~~
CONCATENATE(42, 31, 1)

// returns 42311
~~~
{: .language-js}


~~~
CONCATENATE("Age ", "is ", 42)

// returns Age is 42
~~~
{: .language-js}