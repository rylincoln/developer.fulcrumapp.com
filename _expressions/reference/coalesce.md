---
layout: default
section: expressions
title: "COALESCE"
description: "Returns the first parameter whose value exists"
category: section
permalink: /expressions/reference/coalesce/
---

## COALESCE

Returns the first parameter whose value exists

### Parameters

`parameters` * (__required__) - The value to return if it exists

### Returns

* - The first parameter that exists

### Examples

~~~
COALESCE(null, null, 'Test', 1)

// returns Test
~~~
{: .language-js}


~~~
COALESCE(1, null, null)

// returns 1
~~~
{: .language-js}


~~~
COALESCE(null, null, null)

// returns undefined
~~~
{: .language-js}