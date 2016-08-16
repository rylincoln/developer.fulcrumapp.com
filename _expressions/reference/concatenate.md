---
layout: default
section: expressions
title: "CONCATENATE"
description: "Returns the concatenation of multiple values."
category: section
permalink: /expressions/reference/concatenate/
---

### Description


**NOTE:** This can only be used on fields that store the values as a string. Fields like choice fields and classification sets store the values in an array. Please refer [this example](/expressions/examples/combine-arrays/) for combining arrays.

### Parameters

`var_args_values` String (__required__) - Strings to append in sequence.

### Returns

String

### Examples

```js
CONCATENATE("This ", "is ", "a ", "sentence.")

// returns "This is a sentence."
```


```js
CONCATENATE(42, 31, 1)

// returns "42311"
```


```js
CONCATENATE("Age ", "is ", 42)

// returns "Age is 42"
```