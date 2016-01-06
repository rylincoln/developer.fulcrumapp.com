---
layout: default
section: expressions
title: "CONCAT"
description: "Returns the concatenation of multiple values. Alias for CONCATENATE()"
category: section
permalink: /expressions/reference/concat/
---

### Parameters

`var_args_values` String (__required__) - Strings to append in sequence.

### Returns

String

### Examples

~~~
CONCAT("This ", "is ", "a ", "sentence.")

// returns This is a sentence.
~~~
{: .language-js}


~~~
CONCAT(42, 31, 1)

// returns 42311
~~~
{: .language-js}


~~~
CONCAT("Age ", "is ", 42)

// returns Age is 42
~~~
{: .language-js}