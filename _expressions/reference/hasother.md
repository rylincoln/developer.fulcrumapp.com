---
layout: default
section: expressions
title: "HASOTHER"
description: "Tests whether a choice field or classification field has an &#39;Other&#39; value entered"
category: section
permalink: /expressions/reference/hasother/
---

## HASOTHER

Tests whether a choice field or classification field has an 'Other' value entered

### Parameters

`field` Object (__required__) - the choice field or classification to test

### Returns

Boolean

### Examples

~~~
HASOTHER($choice_field)

// returns false
~~~
{: .language-js}