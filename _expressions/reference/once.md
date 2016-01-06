---
layout: default
section: expressions
title: "ONCE"
description: "Returns a value once, given the current value. This is useful to perform a calculation only once, the first time it&#39;s evaluated."
category: section
permalink: /expressions/reference/once/
---

### Parameters

`value` Number (__required__) - argument

### Returns

Number

### Examples

~~~
ONCE(VERSIONINFO())

// returns Apple iPhone6,2, iOS 8.1, Fulcrum 2.7.0 2162
~~~
{: .language-js}