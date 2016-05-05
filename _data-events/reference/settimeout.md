---
layout: default
section: data_events
title: "SETTIMEOUT"
description: "Calls a function after a specified delay"
category: section
permalink: /data-events/reference/settimeout/
---

### Description

The SETTIMEOUT function can be used to delay execution of a function for a specified amount of time. It's nearly identical to the web platform standard [setTimeout](https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers/setTimeout).

### Parameters

`function` Function (__required__) - The function to execute after the delay

`delay` Number (__required__) - The number of milliseconds to delay (e.g. 1000 is 1 second)

### Result

`Number` - timer ID that can be used to clear the timeout with [CLEARTIMEOUT](/data-events/reference/cleartimeout/).

### Examples

```js
ON('load-record', function(event) {
  var fiveMinutes = 1000 * 60 * 5;

  SETTIMEOUT(function() {
    ALERT("You've been editing this record for 5 minutes.");
  }, fiveMinutes);
});
```
