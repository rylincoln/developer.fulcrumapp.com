---
layout: default
section: data_events
title: "Point-in-polygon with CartoDB API"
description: "Locate which neighborhood you are working in via point-in-polygon."
category: section
---

Data events allow you to grab information about a point's location, i.e. which polygon the point lies in.

This example illustrates how to set up two data events. Both take advantage of CartoDB's querying ability through the SQL API. The first one uses a nearest neighbor query to find the nearest brewery. The second example pulls in the name of the neighborhood polygon in which the point is contained.

These examples require having data stored in CartoDB tables. If you are unsure of what the query should be returning, we recommend testing out example data:

`https://denverstartup.cartodb.com/api/v2/sql?q=SELECT%20*%20FROM%20sanfran_neighborhoods%20where%20ST_Contains(the_geom,%20ST_GeomFromText(%27POINT(-122.4613380%2037.78048)%27,4326))`

which returns:
{% highlight json %}
{ rows: [
  {
    cartodb_id: 801,
    the_geom: "0106000020E6100000010000000103000000010000000F000000EB453166A39E5EC0178291E3D6E442407A631F70319E5EC0421881D1E2E44240B633E401EF9D5EC00784BF2CECE44240E00B90D5A89D5EC0CFB6ACBA0FE542407A7AACE3A69D5EC053047989B6E44240AF65A0F9619D5EC053047989B6E44240C1AD89225C9D5EC01074CF5407E44240EE32E9F7FE9C5EC04B7873870AE44240754217C8A09C5EC07F6A330721E442400A1E86ED8D9C5EC0A1DA87504BE34240FBB8E6EB179D5EC0363A79BD2BE3424024E9C952529D5EC0F386300D19E342402B89DA67989D5EC042BDDE0604E3424016C63DAA919E5EC09FF38C00EFE24240EB453166A39E5EC0178291E3D6E44240",
    the_geom_webmercator: "0106000020110F0000010000000103000000010000000F000000FD7FD0A25B016AC171248B59DD5A5141518B44D9FA006AC15C9C8A2BEA5A5141B3C8DE6DC2006AC14635AB39F45A5141359DC2D486006AC1AF7F716F1A5B5141B829E72D85006AC1FDCE0995BA5A5141B9BA81A64A006AC1FDCE0995BA5A5141E237BAB045006AC1AB3A5F4DFE59514185EC6190F6FF69C1B0F811BD015A51410FC63492A6FF69C1972C70EA195A5141D255008F96FF69C1C1FE3B4534595141B267B4C10B006AC14BF70B5812595141D2847F5B3D006AC181BB6B43FE585141A0A7D9E078006AC1A59A43ACE7585141CA5108934C016AC1DD522815D1585141FD7FD0A25B016AC171248B59DD5A5141",
    restaurants: 147,
    city: "San Francisco",
    county: "San Francisco",
    name: "Inner Richmond",
    bike_park_count: 46,
    bike_share_count: 0,
    co_working: 0,
    bus_stops: 131,
    total: 324
  }
]}
{% endhighlight %}

Tip: To keep data private, you will want to use `&api={secret_api_key}` at the end of the URL

```js
function nearestBrewery() {
  options = {
    url: "https://denverstartup.cartodb.com/api/v2/sql?f=geojson&q=SELECT * FROM denver_breweries ORDER BY the_geom <-> ST_Transform(CDB_LatLng(" + LONGITUDE() + "," + LATITUDE() + "),4326) LIMIT 60"
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      data = JSON.parse(body)
      SETVALUE('nearest_brewery', data.rows[0].name)
    }
  })
}
ON('save-record', nearestBrewery);
ON('edit-record', nearestBrewery);
ON('click', 'nearest_brewery', nearestBrewery)

function identifyNeighborhood() {
  options = {
    url: "https://denverstartup.cartodb.com/api/v2/sql?f=geojson&q=SELECT+*+FROM+denver_neighborhoods+WHERE+ST_Contains(the_geom, ST_GeomFromText('POINT("+ LONGITUDE() + " " + LATITUDE()+ ")', 4326))"
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      data = JSON.parse(body);
      SETVALUE('neighborhood', data.rows[0].nbhd_name);
    }
  })
}
ON('save-record', identifyNeighborhood);
ON('edit-record', identifyNeighborhood);
ON('click', 'neighborhood', identifyNeighborhood);
```
