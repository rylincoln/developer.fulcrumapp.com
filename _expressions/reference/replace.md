---
layout: default
section: expressions
title: "REPLACE"
description: "Replaces a piece of a text string with a different string."
category: section
permalink: /expressions/reference/replace/
---

### Parameters

`text` String (__required__) - A piece of text to be searched.

`start_position` Number (__required__) - Position within the string to begin the search.

`num_characters` Number (__required__) - Number of characters in original string to be replaced.

`replacement` String (__required__) - String to replace `num_characters` with.

### Returns

String

### Examples

~~~
// replaces 'survey' with 'inspection'
REPLACE("Data collection survey", 17, 6, "inspection")

// returns Data collection inspection
~~~
{: .language-js}