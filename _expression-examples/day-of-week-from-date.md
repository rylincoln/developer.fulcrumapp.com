---
layout: default
section: expressions
title: "Generate the day of the week from a date"
description: "Use this in a calculation field to return the day of the week from a date."
category: section
---

{% highlight  js %}
var valueLookup = {
  0: 'Sunday',
  1: 'Monday',
  2: 'Tuesday',
  3: 'Wednesday',
  4: 'Thursday',
  5: 'Friday',
  6: 'Saturday'
};

// This converts a date field in the record to a JavaScript date object
var d = DATEVALUE($the_date_field);

// If you wanted to use today's date or any other specific date ...
// var d = new Date();
// var d = new Date('4/15/1984');

SETRESULT(valueLookup[d.getDay()]);
{% endhighlight %}
