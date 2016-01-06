---
layout: default
section: expressions
title: "ISNAN"
description: "Test whether a value is not a number"
category: section
permalink: /expressions/reference/isnan/
---

### Parameters

`value` Number (__required__) - a value

### Returns

Boolean

### Examples

~~~
ISNAN(NaN)

// returns true
~~~
{: .language-js}


~~~
ISNAN('aaa' / 7)

// returns true
~~~
{: .language-js}


~~~
ISNAN(7)

// returns false
~~~
{: .language-js}