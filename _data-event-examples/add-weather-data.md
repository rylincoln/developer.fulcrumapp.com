---
layout: default
section: data_events
title: "Add current weather to a record"
description: "Use this to fetch weather data from the forecast.io API and add it to the record."
category: section
---

This example assumes you've signed up for an API key from [forecast.io](https://developer.forecast.io/) and have a text field in your app (`weather_summary` below) to store the current weather summary.

Here we're listening for the `'change-geometry'` event for a record, and then using the [REQUEST](/data-events/reference/request) function to make an API call to forecast.io. Once we get the response we parse it as JSON and use [SETVALUE](/data-events/reference/setvalue) to update the form value.

{% highlight  js %}
function getWeather() { 
  forecastApiKey = 'your_api_key'

  options = {
    url: 'https://api.forecast.io/forecast/' + forecastApiKey + '/' + LATITUDE() + ',' + LONGITUDE()
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      weather = JSON.parse(body)
      SETVALUE('weather_summary', weather.currently.summary)
    }
  })
}

ON('change-geometry', getWeather)
```

If you only want to fetch weather when explicitly requested by the end user, you can listen for the `'click'` event for a hyperlink field. Just add a new [hyperlink field](http://www.fulcrumapp.com/help/hyperlink-fields/) to your app and give it a descriptive label, "Tap to Add Weather Data" for example. Leave the default url blank and set up your data event like so.

```js
// This assumes you've still got the getWeather function defined from the example above

ON('click', 'your_hyperlink_field', getWeather)
```

These examples add a single weather metric, but many others [are available](https://developer.forecast.io/docs/v2#data-points) and could be added to multiple fields in your app.
