---
layout: default
section: expressions
title: "NUM"
description: "Converts any value to a number"
category: section
permalink: /expressions/reference/num/
---

### Parameters

`value` * (__required__) - a value to convert to a number

### Returns

Number

### Examples

~~~
NUM('12')

// returns 12
~~~
{: .language-js}


~~~
NUM(12)

// returns 12
~~~
{: .language-js}


~~~
NUM('a')

// returns NaN
~~~
{: .language-js}