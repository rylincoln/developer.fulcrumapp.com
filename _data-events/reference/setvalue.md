---
layout: default
section: data_events
title: "SETVALUE"
description: "Set the value of a field."
category: section
permalink: /data-events/reference/setvalue/
---

### Parameters

`field` String (__required__) - The data name for the field to set

`value` String (__required__) - The value to set for the field, or `null` to clear the value

### Examples

```js
SETVALUE('weather_summary', 'Just beautiful')

// Sets the value of a weather summary field
```
