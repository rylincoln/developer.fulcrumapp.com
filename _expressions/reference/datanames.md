---
layout: default
section: expressions
title: "DATANAMES"
description: "Returns the data names of the form fields"
category: section
permalink: /expressions/reference/datanames/
---

### Parameters

`type` String (optional)  [default = any] - Optional field type

### Returns

Array

### Examples

```js
DATANAMES()

// returns ["name","items","cost"]
```


```js
DATANAMES('Repeatable')

// returns ["items"]
```