---
layout: default
section: data_events
title: "SETMAXLENGTH"
description: "Set the maximum length for a field."
category: section
permalink: /data-events/reference/setmaxlength/
---

### Parameters

`field` String (__required__) - The data name for the field

`length` number,null (__required__) - The maximum length of the field

### Examples

```js
SETMAXLENGTH('weather_summary', 25);

// Sets the maximum length of the weather summary field to 25
```


```js
// Unsets any override previously set by SETMAXLENGTH and uses the original setting from the form schema
SETMAXLENGTH('weather_summary', null);
```