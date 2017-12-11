---
layout: default
section: expressions
title: "FIELD"
description: "Returns definition object for a specified field"
category: section
permalink: /expressions/reference/field/
---

### Parameters

`dataName` String (__required__) - The data name of the field

### Returns

Object

### Examples

```js
FIELD('condition')

// returns the definition object for the field with a dataName of 'condition'
```


```js
FIELD('condition').parent.label

// returns the label string for the parent of the field with a dataName of 'condition'
```