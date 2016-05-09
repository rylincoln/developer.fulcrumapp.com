---
layout: default
section: data_events
title: "Add a tally counter to your form"
description: "Use this example to add a tally counter button to increment a numeric field"
category: section
---

This example shows how to add a tally counter to your form. It displays a button on the form that increments a numeric field when tapped.

For this to work, you will need a numeric field with the data name `tally_count` and a hyperlink field with the data name of `increment`.

<img src="https://cldup.com/pC31hLCWn0.gif" alt="Tally Counter" style="float: right; margin-left: 40px;" />

```js
ON('click', 'increment', function(event) {
  // increment the numeric field by 1
  SETVALUE('tally_count', +$tally_count + 1);
});
```
