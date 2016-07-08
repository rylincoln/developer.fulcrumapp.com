---
layout: default
section: expressions
title: "QUOTIENT"
description: "Returns the result of dividing one number by another."
category: section
permalink: /expressions/reference/quotient/
---

### Parameters

`dividend` Number (__required__) - The number to divide.

`divisor` Number (__required__) - The number to be divided by.

### Returns

Number

### Examples

```js
QUOTIENT(30, 5)

// returns 6
```


```js
QUOTIENT(0, 10)

// returns 0
```


```js
QUOTIENT(45, 0)

// returns NaN
```