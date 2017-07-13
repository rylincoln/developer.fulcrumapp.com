---
layout: default
section: expressions
title: "Degrees Decimal Minutes"
description: "Use these in calculation fields to return latitude/longitude in degrees decimal minutes format."
category: section
---

```js
//Return degrees decimal minutes from LATITUDE() & LONGITUDE().
//Please consider FLOOR versus CEILING for your respective hemisphere/side-of-dateline.
//Below are 2 expression blocks, intended for 2 separate Calculation fields (Display Format: Text) within a Fulcrum app.

var lat = FLOOR(LATITUDE(), 1);
var latdm = ROUND(ABS((LATITUDE() - lat) * 60), 6);
SETRESULT(lat + " " + latdm);

var lon = CEILING(LONGITUDE(), 1);
var londm = ROUND(ABS((LONGITUDE() - lon) * 60), 6);
SETRESULT(lon + " " + londm);
```
