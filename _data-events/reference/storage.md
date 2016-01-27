---
layout: default
section: data_events
title: "STORAGE"
description: "Instantiates a storage object for setting and getting local storage items."
category: section
permalink: /data-events/reference/storage/
---

### Parameters

No parameters

### Examples

{% highlight js %}
storage = STORAGE()
KEY = 'item_key'
storage.setItem(KEY, 'hello world')

// Sets an item in local storage, must be a string
{% endhighlight %}


{% highlight js %}
item = storage.getItem(KEY)

// Gets an item from storage if it exists, otherwise returns null
{% endhighlight %}


{% highlight js %}
geom = { type: 'Point', coordinates: [-100, 40] }
storage.setItem('geometry', JSON.stringify(geom))

anotherGeom = JSON.parse(storage.getItem('geometry'))

// Use JSON.stringify and JSON.parse to serialize and deserialize objects in local storage
{% endhighlight %}


{% highlight js %}
storage.removeItem(KEY)

// Removes an item from storage
{% endhighlight %}


{% highlight js %}
storage.clear()

// Removes all items from storage
{% endhighlight %}