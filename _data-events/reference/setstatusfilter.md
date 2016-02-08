---
layout: default
section: data_events
title: "SETSTATUSFILTER"
description: "Set the allowable status values for a record."
category: section
permalink: /data-events/reference/setstatusfilter/
---

### Parameters

`statuses` Array,null (__required__) - The allowable status values for the record

### Examples

{% highlight js %}
SETSTATUSFILTER(['inspection_pending', 'in_inspection'])

// Sets the allowable status values for the record to be 'inspection_pending' or 'in_inspection'
{% endhighlight %}


{% highlight js %}
SETSTATUSFILTER(null)

// Unsets any previous status filters and allows any status to be selected for the record
{% endhighlight %}