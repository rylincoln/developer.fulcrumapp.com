---
layout: default
section: expressions
title: "LEFT"
description: "Returns a substring from the beginning of a given string."
category: section
permalink: /expressions/reference/left/
---

### Parameters

`value` String (__required__) - The string value from which the left portion will be returned.

`number_of_characters` Number (optional)  [default = 1] - The number of characters to return from the left side of the string.

### Returns

String

### Examples

~~~
LEFT("Fulcrum", 3)

// returns Ful
~~~
{: .language-js}


~~~
LEFT("Fulcrum")

// returns F
~~~
{: .language-js}