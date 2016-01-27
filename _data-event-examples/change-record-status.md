---
layout: default
section: data_events
title: "Change a record's status"
description: "Use this to change a record's status when a user changes a specific field or when the record is saved."
category: section
---

This example listens for changes to the `inspection_date` field and updates the record status to 'inspected' if a date value was entered. If the date was cleared (no value), the status reverts to the default state, 'created'.

{% highlight  js %}
function changeStatus(event) {
  if (event.value) {
    // There is a value, so set the status
    SETSTATUS('inspected')
  } else {
    // There is no value. It could have been cleared from the field.
    // Revert status to 'created'.
    SETSTATUS('created')
  }
}

ON('change', 'inspection_date', changeStatus)
{% endhighlight %}

Another common use case is to just change the record's status any time the record is saved on the mobile device. Here we'll listen to the `'save-record'` event and simply set it to 'inspected'.

{% highlight  js %}
function changeStatus(event) {
  SETSTATUS('inspected')
}

ON('save-record', changeStatus)
{% endhighlight %}
