---
layout: default
section: expressions
title: "ROUNDDOWN"
description: "Rounds a number down to a desired number of decimal places."
category: section
permalink: /expressions/reference/rounddown/
---

### Parameters

`value` Number (__required__) - The value to round down.

`places` Number (__required__) - The number of places to which to round down.

### Returns

Number

### Examples

```js
ROUNDDOWN(156.826, 2)

// returns 156.82
```


```js
ROUNDDOWN(156.826, 0)

// returns 156
```