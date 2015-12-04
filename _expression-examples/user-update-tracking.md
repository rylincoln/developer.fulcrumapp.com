---
layout: default
section: expressions
title: "Track who has updated a record"
description: "Displays all user names that have updated a record."
category: section
---

Maintain a field for tracking record updates by field technicians only.


{% highlight  js %}
if (this.platform == 'Android' || this.platform == 'iOS') {
  SETRESULT(USERFULLNAME());
}
{% endhighlight %}
