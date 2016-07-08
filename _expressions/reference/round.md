---
layout: default
section: expressions
title: "ROUND"
description: "Rounds a number to a specified number of decimal places according to standard rounding rules."
category: section
permalink: /expressions/reference/round/
---

### Parameters

`value` Number (__required__) - The value to be rounded to `places`.

`places` Number (__required__) - The number of decimal places to which to round `value`.

### Returns

Number

### Examples

```js
ROUND(179.848, 1)

// returns 179.8
```


```js
ROUND(918.268, -2)

// returns 900
```