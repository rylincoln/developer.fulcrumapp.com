---
layout: default
section: expressions
title: "CLEAN"
description: "Returns the text with the non-printable ASCII characters removed."
category: section
permalink: /expressions/reference/clean/
---

### Parameters

`text` String (__required__) - The text whose non-printable characters are to be removed.

### Returns

String

### Examples

~~~
CLEAN('Test' + CHAR(31))

// returns Test
~~~
{: .language-js}