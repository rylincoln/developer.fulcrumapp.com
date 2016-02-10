---
layout: default
section: data_events
title: "REQUEST"
description: "Performs an HTTP request and executes the callback on completion."
category: section
permalink: /data-events/reference/request/
---

### Parameters

`options` Object (__required__) - The options to pass for the request

`options.url` string (__required__) - The url for the request

`options.method` string (optional)  [default = GET] - The HTTP method for the request (POST, PUT, DELETE, etc.)

`options.followRedirect` boolean (optional)  [default = true] - Should the request follow any redirects

`options.headers` Object (optional)  [default = {}] - An object containing keys and values for additional header items

`options.qs` Object (optional) - An object containing query string parameters (url parameters)

`options.json` Object (optional) - An object to be passed in the request body, must be `JSON.stringify`able

`options.body` string (optional) - The request body to send with a POST or PUT request

`callback` function (__required__) - The function to call when the request is complete - The function is passed `error`, `response`, and `body` parameters

### Examples

```js
options = {
  url: 'https://api.forecast.io/forecast/your_api_key/40,-100'
}

function callback(error, response, body) {
  if (error) {
    ALERT('Error with request: ' + error)
  } else {
    weather = JSON.parse(body)
    SETVALUE('weather_summary', weather.currently.summary)
  }
}

REQUEST(options, callback);

// Performs a request with options and execute callback on completion
```