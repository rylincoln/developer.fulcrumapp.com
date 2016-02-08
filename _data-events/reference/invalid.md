---
layout: default
section: data_events
title: "INVALID"
description: "Display a validation error message and stop the record, or repeatable item, from being saved."
category: section
permalink: /data-events/reference/invalid/
---

### Parameters

`message` String (__required__) - The validation error message content for the alert

### Examples

{% highlight js %}
INVALID('Depth must be less than 20.')

// Displays an alert and stops the record from being saved
{% endhighlight %}


{% highlight js %}
ON('validate-record', function (event) {
   if (NUM($depth) >= 20) {
     INVALID('Depth must be less than 20.')
   }
});

// Use with the 'validate-record' event to stop a record from being saved
{% endhighlight %}


{% highlight js %}
ON('validate-repeatable', function (event) {
   if (!ISSELECTED($choice_field, 'Purple')) {
     INVALID('You gotta pick purple!')
   }
});

// Use with the 'validate-repeatable' event to stop a repeatable from being saved
{% endhighlight %}