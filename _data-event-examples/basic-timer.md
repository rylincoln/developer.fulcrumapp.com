---
layout: default
section: data_events
title: "Basic Timer"
description: "A simple stopwatch-like timer that allows you to start, stop, and reset."
category: section
tags:
  - set interval
  - set label
  - set value
---

This example can be utilized in situations where survey details need to be timed and documented, such as wildlife observations or recording various occurrence durations. It currently _does not_ have the functionality to Start > Stop > and Start again.

Please consider the [Record Auditing Duration](http://www.fulcrumapp.com/blog/august-2016-updates/) metrics which are now captured in your Fulcrum records - if those features may meet your needs for time capture.

The `SETTIMEOUT` function can also be used for similar situations, such as [alerting a user with a message](http://developer.fulcrumapp.com/data-events/reference/settimeout/) after a specified amount of time.

<img src="../media/timer.gif" alt="Stopwatch/Timer Example" style="float: right; margin-left: 40px;" />

```js
// this Data Event utilizes a Yes/No field (timer) with the N/A choice enabled,
// respectively represeting Start/Stop and Reset actions,
// 2 hidden/readonly Numeric (integer) fields (to hold start_time & stop_time),
// a hidden/readonly Text field (time),
// a hidden Calculation field, display format: Text (total_time),
// the Calculation Expression is: `($stop_time - $start_time) / 1000 + " seconds"`.

function timer(event) {
    var now = Date.now();
    var interval = SETINTERVAL(function() {
        SETVALUE('time', (Date.now() - $start_time) / 1000 + " seconds");
    }, 100);

    if (VALUE('timer') == 'start') {
        SETVALUE('start_time', now);
        interval;
        SETHIDDEN('time', false);

    } else if (VALUE('timer') == 'stop') {
        SETVALUE('stop_time', now);
        CLEARINTERVAL(interval);
        SETHIDDEN('total_time', false);
        SETHIDDEN('time', true);

    } else if (VALUE('timer') == 'reset') {
        SETHIDDEN('total_time', true);
        SETHIDDEN('time', true);
        SETVALUE('start_time', '');
        SETVALUE('stop_time', '');
        SETVALUE('time', '');
    }
}

ON('change', 'timer', timer);
```
