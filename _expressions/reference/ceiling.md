---
layout: default
section: expressions
title: "CEILING"
description: "Rounds a number up to the nearest integer multiple of specified significance."
category: section
permalink: /expressions/reference/ceiling/
---

### Parameters

`value` Number (__required__) - The value to round up to the nearest integer multiple of factor.

`factor` Number (optional)  [default = 1] - The number to whose multiples value will be rounded.

### Returns

Number

### Examples

```js
CEILING(139.85, 0.1)

// returns 139.9
```


```js
CEILING(139.001)

// returns 140
```