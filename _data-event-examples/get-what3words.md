---
layout: default
section: data_events
title: "Get what3words coordinates for a record"
description: "Use the what3words API to populate a record with the 3 word representation of its location."
category: section
---

This example assumes you've signed up for an API key from [what3words](http://developer.what3words.com/api/) and have a text field in your app (`these_three_words` below) to store the three word representation of the record's location.

Here we're listening for the `'click'` event for a [hyperlink field](http://www.fulcrumapp.com/help/hyperlink-fields/), and then using the [REQUEST](/data-events/reference/request) function to make an API call to what3words. Once we get the response we parse it as JSON and use [SETVALUE](/data-events/reference/setvalue) to update the form value. Depending on your use case it might make more sense to listen to the `'change-geometry'` event for the form to trigger the call to get the three words.

{% highlight  js %}
function populateWords() {
  w3wApiKey = 'your_api_key'

  options = {
    url: 'https://api.what3words.com/position?key=' + w3wApiKey + '&position=' + LATITUDE() + ',' + LONGITUDE()
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      coord = JSON.parse(body)
      SETVALUE('these_three_words', coord.words.join('.'))
    }
  })
}

ON('click', 'get_what3words', populateWords)

{% endhighlight %}

This example populates a single field with the three word location (`'laundry.applauds.cafe'`). You could easily split the three words up into separate fields as seen below.

{% highlight  js %}
function populateWords() {
  w3wApiKey = 'your_api_key'

  options = {
    url: 'https://api.what3words.com/position?key=' + w3wApiKey + '&position=' + LATITUDE() + ',' + LONGITUDE()
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      coord = JSON.parse(body)
      SETVALUE('word1', coord.words[0])
      SETVALUE('word2', coord.words[1])
      SETVALUE('word3', coord.words[2])
    }
  })
}

ON('click', 'get_what3words', populateWords)

{% endhighlight %}
