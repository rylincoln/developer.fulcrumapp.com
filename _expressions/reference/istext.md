---
layout: default
section: expressions
title: "ISTEXT"
description: "Checks whether a value is text."
category: section
permalink: /expressions/reference/istext/
---

### Parameters

`value` String (__required__) - The value to test as text.

### Returns

Boolean

### Examples

~~~
ISTEXT("Text")

// returns true
~~~
{: .language-js}


~~~
ISTEXT(4)

// returns false
~~~
{: .language-js}