---
layout: default
section: data_events
title: "OPENURL"
description: "Open a URL for a website or mobile app."
category: section
permalink: /data-events/reference/openurl/
---

### Parameters

`url` String (__required__) - The URL to open

### Examples

{% highlight js %}
OPENURL('https://www.google.com/search?q=Fulcrum+Mobile+Solutions')

// Opens a web browser to the specified address
{% endhighlight %}


{% highlight js %}
OPENURL('comgooglemaps://?q=Pizza&center=37.759748,-122.427135')

// Opens google maps and searches for Pizza near a location
{% endhighlight %}


{% highlight js %}
OPENURL('mailto:clark.griswold@gmail.com?subject=turn+those+lights+off!&body=jk,+i+love+them.')

// Opens an email client with a predefined subject and body
{% endhighlight %}