---
layout: default
section: expressions
title: "NUMS"
description: "Converts multiple parameters to an array of numbers"
category: section
permalink: /expressions/reference/nums/
---

### Parameters

`var_args_values` * (__required__) - the values to convert to numbers

### Returns

Number

### Examples

```js
NUMS('1' ,'2', '3')

// returns [1,2,3]
```


```js
NUMS('1' ,'2', 'a')

// returns [1,2,null]
```