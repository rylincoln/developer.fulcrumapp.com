---
layout: default
section: expressions
title: "FIXED"
description: "Formats a number with a fixed number of decimal places."
category: section
permalink: /expressions/reference/fixed/
---

### Parameters

`value` Number (__required__) - Number to format.

`number_of_places` Number (__required__) - Number of decimal places to display in the result.

`value` Boolean (__required__) - Whether or not to suppress the thousands separator.

### Returns

String

### Examples

```js
FIXED(3000.141592, 2, true)

// returns 3000.14
```


```js
FIXED(6276.22241, 3, false)

// returns 6,276.222
```