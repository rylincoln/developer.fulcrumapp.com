---
layout: default
section: expressions
title: "Get last item in classification set"
description: "How to pull the last item from a classification set field."
category: section
---

Use this in a calculation field to pull the last item capture in a classification set field.

{% highlight  js %}
if ($my_classification.other_values.length > 0) {
  SETRESULT($my_classification.other_values);
} else if ($my_classification.choice_values.length > 0) {
  SETRESULT($my_classification.choice_values.slice(-1)[0]);
} else {
  SETRESULT(null);
}
{% endhighlight %}
