---
layout: default
section: expressions
title: "Get address from address field"
description: "Pulls the address from the address field."
category: section
---

```js
var address = '';
if ($address.sub_thoroughfare) {
  address += $address.sub_thoroughfare;
}
if ($address.thoroughfare) {
  address += ' ' + $address.thoroughfare;
}
if ($address.suite) {
  address += ' #' + $address.suite;
}
if ($address.locality) {
  address += ', ' + $address.locality;
}
if ($address.admin_area) {
  address += ', ' + $address.admin_area;
}
if ($address.postal_code) {
  address += ' ' + $address.postal_code;
}
if ($address.sub_admin_area) {
  address += ', ' + $address.sub_admin_area;
}
if ($address.country) {
  address += ', ' + $address.country;
}
SETRESULT(address);
```
