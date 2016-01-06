---
layout: default
section: expressions
title: "COUNTBLANK"
description: "Returns the number of blank values in a dataset."
category: section
permalink: /expressions/reference/countblank/
---

### Parameters

`value` Array (__required__) - an array of items

### Returns

Number - the number of blank items in the array

### Examples

~~~
// since null and '' are blank values
COUNTBLANK([null, null, '', 1])

// returns 3
~~~
{: .language-js}