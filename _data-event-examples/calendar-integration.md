<!-- ---
layout: default
section: data_events
title: "Integrate with your Gmail Calendar"
description: "Simplify scheduling with Fulcrum and calendar integration."
category: section
---

This example grabs `appointment date`, `appointment start time` and `appointment end time` for a meeting to push into a google calendar.

{% highlight  js %}
function addAppointment(event) {
  appointment_date =
  apt_start_time =
  apt_end_time =
}

ON('save-record', addAppointment)
{% endhighlight %}
