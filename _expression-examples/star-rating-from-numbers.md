---
layout: default
section: expressions
title: "Star Ratings From A Numeric Range"
description: "How to generate star ratings using numeric range data as input."
category: section
---

Assuming `$rating` is a numeric field with a minumum of 1 and a maximum of 5, generate a star rating out of maximum of 5 stars.

This will take a numeric field value in `$rating` and convert it into actual star characters.

```js
Array(FLOOR($rating + 1)).join('★') + Array(FLOOR(6 - $rating)).join('☆')
```

Entering "3" gives the output: "★★★☆☆".
