---
layout: default
section: expressions
title: "SHUFFLE"
description: "Randomizes an array of items"
category: section
permalink: /expressions/reference/shuffle/
---

### Parameters

`value` Array (__required__) - an array of items to randomize

### Returns

Array

### Examples

{% highlight js %}
var items = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
SHUFFLE(items)[0] != items[0]

// returns true
{% endhighlight %}