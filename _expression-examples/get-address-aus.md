---
layout: default
section: expressions
title: "Get address from address field (in Australia)"
description: "Pulls the address from the address field in Australia."
category: section
---

Addresses in Australia, and other parts of the world, match up differently than in the USA. Here is an example of how to pull out city and state in Australia.

Grabbing the city:

```js
var city = '';
if ($address.locality && $address.locality !== '') {
  city += $address.locality;
}
SETRESULT(city);
```

Grabbing the state:

```js
var state;
if ($address.admin_area && $address.admin_area !== '') {
  state = $address.admin_area;
}
SETRESULT(state);
```
