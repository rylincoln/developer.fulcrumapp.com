---
layout: default
section: data_events
title: "Send push notifications with Pushbullet"
description: "Demonstrates how to automatically send push notifications when a record is saved."
category: section
tags:
  - request
  - pushbullet
  - notifications
---

This example demonstrates integrating Fulcrum with [Pushbullet](https://www.pushbullet.com/) to automatically send a push notification when a record is saved. It uses the [Pushbullet API](https://docs.pushbullet.com/#create-push) to create a push notification, which includes some record data and a link to the record location on Google Maps. This is useful when you need immediate notifications from the field without having to wait for syncing.

```js
ON('save-record', function (event) {
  options = {
    url: 'https://api.pushbullet.com/v2/pushes',
    method: 'POST',
    headers: {
      'Access-Token': 'my-access-token',
      'Content-Type': 'application/json'
    },
    json: {
      'email': 'manager@company.com',
      'title': 'Fulcrum record saved in: ' + this.form.name,
      'body': USERFULLNAME() + ' just saved a record with a status of: ' + STATUS(),
      'type': 'link',
      'url': 'http://maps.google.com/maps?q=loc:' + LATITUDE() + ',' + LONGITUDE() + ' (' + $name + ')'
    }
  };

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error: ' + INSPECT(error));
    }
  });
});
```
