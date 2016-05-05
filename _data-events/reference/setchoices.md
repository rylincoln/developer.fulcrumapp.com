---
layout: default
section: data_events
title: "SETCHOICES"
description: "Set the available choices for a choice field."
category: section
permalink: /data-events/reference/setchoices/
---

### Parameters

`field` String (__required__) - The data name for the field

`choices` Array,null (__required__) - The choices for the choice field, or `null` to restore the original choices.

The `choices` parameter can be in 3 possible formats. The first format is provided for simplicity, and the last 2 formats are for more sophisticated scenarios where you want control over the label and value properties of the choices. The examples below demonstrate all 3 formats.

* Array of strings - simplest format, the label and value are the same
* Array of arrays - each choice item is an array in `[label, value]` order
* Array of objects - each object has a `label` and `value` attribute

### Examples

```js
choices = ['Rain', 'Hail', 'Snow', 'Graupel']
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of values
```


```js
choices = [
  ['Light Rain', 'light_rain'],
  ['Heavy Rain', 'heavy_rain']
]
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of labels and values in [<label>, <value>] order
```


```js
choices = [
  { label: 'Light Rain', value: 'light_rain' },
  { label: 'Heavy Rain', value: 'heavy_rain' }
]
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of labels and values in an object containing "label" and "value" keys
```


```js
SETCHOICES('weather_summary', null)

// Unsets any override previously set by SETCHOICES and uses the original setting from the form schema
```
