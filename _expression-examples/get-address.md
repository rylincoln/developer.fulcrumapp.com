---
layout: default
section: expressions
title: "Get address from address field"
description: "Pulls the address from the address field."
category: section
---

```js
var address = '';
// street number
if ($address.sub_thoroughfare) {
  address += $address.sub_thoroughfare;
}
// street
if ($address.thoroughfare) {
  address += ' ' + $address.thoroughfare;
}
// suite
if ($address.suite) {
  address += ' #' + $address.suite;
}
// city
if ($address.locality) {
  address += ', ' + $address.locality;
}

if ($address.admin_area) {
  address += ', ' + $address.admin_area;
}
// zip
if ($address.postal_code) {
  address += ' ' + $address.postal_code;
}
// state
if ($address.sub_admin_area) {
  address += ', ' + $address.sub_admin_area;
}
if ($address.country) {
  address += ', ' + $address.country;
}
SETRESULT(address);
```

If you need to break up the address for formatting purposes, you can create two calculation fields and divide up the address field.

```js
var address = '';
if ($address.sub_thoroughfare) {
  address += $address.sub_thoroughfare;
}
if ($address.thoroughfare) {
  address += ' ' + $address.thoroughfare;
}
if ($address.suite) {
  address += $address.suite;
}
SETRESULT(address);
```
```js
var address = '';
if ($address.locality && $address.locality !== '') {
  address += $address.locality;
}
if ($address.admin_area && $address.admin_area !== '') {
  address += ', ' + $address.admin_area;
}
if ($address.postal_code && $address.postal_code !== '') {
  address += ' ' + $address.postal_code;
}
if ($address.sub_admin_area && $address.sub_admin_area !== '') {
  address += ', ' + $address.sub_admin_area;
}
if ($address.country) {
  address += ', ' + $address.country;
}
SETRESULT(address);
