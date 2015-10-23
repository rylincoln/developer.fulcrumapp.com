---
layout: default
section: expressions
title: "ISNONTEXT"
description: "Tests whether a value is non-textual."
category: section
permalink: /expressions/reference/isnontext/
---

## ISNONTEXT

Tests whether a value is non-textual.

### Parameters

`value` String (__required__) - The value to test as non-text.

### Returns

Boolean

### Examples

~~~
ISNONTEXT(4)

// returns true
~~~
{: .language-js}


~~~
ISNONTEXT("Some text")

// returns false
~~~
{: .language-js}