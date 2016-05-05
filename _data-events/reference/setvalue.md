---
layout: default
section: data_events
title: "SETVALUE"
description: "Set the value of a field."
category: section
permalink: /data-events/reference/setvalue/
---

### Parameters

`field` String (__required__) - The data name for the field to set

`value` String (__required__) - The value to set for the field, or `null` to clear the value

### Examples

```js
SETVALUE('weather_summary', 'Just beautiful')

// Sets the value of a weather summary field
```

```js
SETVALUE('time_field', '16:00')

// Sets the value of a time field
```

```js
SETVALUE('date_field', '2016-04-28')

// Sets the value of a date field
```

```js
SETVALUE('choice_field', 'red')

// Sets the value of a single choice field
```

```js
SETVALUE('multiple_choice_field', ['red', 'green', 'blue'])

// Sets the value of a multiple choice field
```

```js
SETVALUE('classification_field', ['level1', 'level2', 'level3'])

// Sets the value of a classification field to level1 > level2 > level3
```

```js
SETVALUE('yes_no_field', 'yes')

// Sets the value of a yes/no field
```

```js
var address = {
  sub_thoroughfare: '360',
  thoroughfare: 'Central Avenue',
  suite: '200',
  locality: 'St. Petersburg',
  sub_admin_area: 'Pinellas',
  admin_area: 'FL',
  postal_code: '33701',
  country: 'US'
};

SETVALUE('address_field', address)

// Sets the value of an address field
```
