---
layout: default
section: expressions
title: "DATEADD"
description: "Adds a number of days to a given date"
category: section
permalink: /expressions/reference/dateadd/
---

### Parameters

`date` Date (__required__) - date

`days` Number (__required__) - the number of days to add

### Returns

Date

### Examples

```js
DATEADD('2015-01-01', 10)

// returns 2015-01-11
```


```js
DATEADD('2015-01-31', 90)

// returns 2015-05-01
```