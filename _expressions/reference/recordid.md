---
layout: default
section: expressions
title: "RECORDID"
description: "Returns the ID of the current record. This function will always return the top level record ID even when used inside a repeatable. To get the repeatable item ID, use the REPEATABLEID function."
category: section
permalink: /expressions/reference/recordid/
---

## RECORDID

Returns the ID of the current record. This function will always return the top level record ID even when used inside a repeatable. To get the repeatable item ID, use the `REPEATABLEID` function.

### Parameters

No parameters

### Returns

String - The ID of the current record

### Examples

~~~
RECORDID()

// returns 96eb35f5-13d8-4666-b188-8108019d0984
~~~
{: .language-js}