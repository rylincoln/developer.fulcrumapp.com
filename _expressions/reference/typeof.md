---
layout: default
section: expressions
title: "TYPEOF"
description: "Returns the type of a value"
category: section
permalink: /expressions/reference/typeof/
---

### Parameters

`value` * (__required__) - A value to get the type of

### Returns

String - The type of the value

### Examples

~~~
TYPEOF('test')

// returns string
~~~
{: .language-js}


~~~
TYPEOF(1)

// returns number
~~~
{: .language-js}


~~~
TYPEOF(true)

// returns boolean
~~~
{: .language-js}


~~~
TYPEOF(null)

// returns null
~~~
{: .language-js}


~~~
TYPEOF(new Date)

// returns date
~~~
{: .language-js}


~~~
TYPEOF({ name: 'Test' })

// returns object
~~~
{: .language-js}


~~~
TYPEOF([1, 2, 3])

// returns array
~~~
{: .language-js}