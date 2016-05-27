---
layout: default
section: data_events
title: "Update CartoDB points table from Fulcrum"
description: "Demonstrates how to POST data to the CartoDB SQL API."
category: section
---

This example demonstrates how to build a SQL statement to *create* or *update* records in [CartoDB](https://cartodb.com/). When the Fulcrum record is saved, a POST request is sent to the [CartoDB SQL API](https://docs.cartodb.com/cartodb-platform/sql-api/). While you can easily sync your Fulcrum app to CartoDB via [Data Shares](http://www.fulcrumapp.com/help/data-shares/) and [Synced Tables](https://blog.cartodb.com/synced-tables-create-real-time-maps-from-data-anywhere/), or write custom [webhooks](/general/webhooks/), this method instantly updates your CartoDB table without having to wait for a scheduled CartoDB sync or even a Fulcrum sync.

```js
var username = 'fulcrum',
  api_key = 'your-cartodb-api-key';

ON('new-record', function(event) {
  type = 'create';
});

ON('edit-record', function(event) {
  type = 'update';
});

ON('save-record', function(event) {
  if (type == 'create') {
    query = 'INSERT INTO fulcrum_points_table (fulcrum_id, name, number, color,  the_geom) VALUES ($$' + RECORDID() + '$$, $$' + $name + '$$, ' + $number + ', $$' + STATUS() + '$$, ST_SetSRID(ST_Point(' + LONGITUDE() + ', ' + LATITUDE() + '),4326))';
    postToCDB(query);
  } else if (type == 'update') {
    query = 'UPDATE fulcrum_points_table SET name=$$' + $name + '$$, number=' + $number + ', color=$$' + STATUS() + '$$, the_geom=ST_SetSRID(ST_Point(' + LONGITUDE() + ', ' + LATITUDE() + '),4326) WHERE fulcrum_id=$$' + RECORDID() + '$$';
    postToCDB(query);
  }
});

function postToCDB(query) {
  options = {
    url: 'https://' + username + '.cartodb.com/api/v2/sql?q=' + query + '&api_key=' + api_key,
    method: 'POST'
  };

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error);
    } else {
      ALERT('This record has been successfully posted to CartoDB!');
    }
  });
}
```
