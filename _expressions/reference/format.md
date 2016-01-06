---
layout: default
section: expressions
title: "FORMAT"
description: "Formats a string"
category: section
permalink: /expressions/reference/format/
---

## FORMAT

Formats a string

### Parameters

`value` String (__required__) - string format. Use %s for strings and %d for numbers.

`var_args_values` * (__required__) - Value(s) to substitute into the format string

### Returns

String - formatted string

### Examples

~~~
FORMAT('The pole height is %d meters and has %d issues detected.', 20, 3)

// returns The pole height is 20 meters and has 3 issues detected.
~~~
{: .language-js}


~~~
FORMAT('%s/%s/%s %s:%s:%s', 11, 11, 2015, 12, 30, 30)

// returns 11/11/2015 12:30:30
~~~
{: .language-js}