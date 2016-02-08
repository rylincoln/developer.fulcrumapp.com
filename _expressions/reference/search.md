---
layout: default
section: expressions
title: "SEARCH"
description: "Returns the position at which a specified string is first found within a block of text. Ignores case."
category: section
permalink: /expressions/reference/search/
---

### Parameters

`search_for` String (__required__) - String to search for within `text_to_search`.

`text_to_search` String (__required__) - Text to search for the first instance of `search_for`.

`starting_at` Number (__required__) - argument Position index to begin the search.

### Returns

Number

### Examples

{% highlight js %}
SEARCH("collect", "Data analysts love Fulcrum for data collection needs", 12)

// returns 37
{% endhighlight %}