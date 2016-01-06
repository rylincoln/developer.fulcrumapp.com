---
layout: default
section: expressions
title: "ISLOGICAL"
description: "Checks whether a value is true or false."
category: section
permalink: /expressions/reference/islogical/
---

### Parameters

`value` String (__required__) - The value to be verified as `true` or `false`.

### Returns

Boolean

### Examples

~~~
ISLOGICAL(true)

// returns true
~~~
{: .language-js}


~~~
ISLOGICAL("Text")

// returns false
~~~
{: .language-js}