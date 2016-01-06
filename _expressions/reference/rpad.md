---
layout: default
section: expressions
title: "RPAD"
description: "Pads a string on the right side"
category: section
permalink: /expressions/reference/rpad/
---

### Parameters

`value` String (__required__) - The string to pad

`count` Number (__required__) - The number of characters to pad

`character` String (optional)  [default = ' '] - The character to use for padding

### Returns

String

### Examples

~~~
RPAD('2', 4, '0')

// returns 2000
~~~
{: .language-js}


~~~
RPAD('2', 6, '0')

// returns 200000
~~~
{: .language-js}