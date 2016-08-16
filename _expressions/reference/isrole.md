---
layout: default
section: expressions
title: "ISROLE"
description: "Checks whether the current user&#39;s role is one of the arguments"
category: section
permalink: /expressions/reference/isrole/
---

### Parameters

`var_args_values` String (__required__) - The role values to check

### Returns

Boolean

### Examples

```js
ISROLE('Owner', 'Manager') // is the current role either Owner or Manager?

// returns true
```