---
layout: default
section: data_events
title: "Geofencing with CartoDB API"
description: "Locate which neighborhood you are working in through geofencing."
category: section
---

- Can put multiple functions in the data events console
- need to use data_name for set value function. 

Data events allow you to grab information about a point's location, i.e. which polygon that point lies in.  In this example, it determines which neighborhood you are collecting data in according to the polygon information stored in CartoDB.  It uses the CartoDB SQL query to identify the location that the record of the record point.

The query in the SQL API is selecting the polygons in which the point is contained in. 

https://denverstartup.cartodb.com/api/v2/sql?q=SELECT%20*%20FROM%20sanfran_neighborhoods%20where%20ST_Contains(the_geom,%20ST_GeomFromText(%27POINT(-122.4613380%2037.78048)%27,4326))*

*To keep data private, you will want to use '&api={secret_api_key}' at the end of the URL


{% highlight  js %}
function identifyNeighborhood() {
  options = {
    url: "https://denverstartup.cartodb.com/api/v2/sql?f=geojson&q=SELECT+*+FROM+denver_neighborhoods+WHERE+ST_Contains(the_geom, ST_GeomFromText('POINT("+ LONGITUDE() + LATITUDE()+ ")', 4326))"
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      data = JSON.parse(body)
      SETVALUE('neighborhood', data.rows.nbhd_name)
    }
  })
}

function nearestBrewery() {
  options = {
    url: "https://denverstartup.cartodb.com/api/v2/sql?f=geojson&q=SELECT * FROM denver_breweries ORDER BY the_geom <-> ST_Transform(CDB_LatLng(" + LONGITUDE() + "," + LATITUDE() + "),4326) LIMIT 60"
  }

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error)
    } else {
      data = JSON.parse(body)
      SETVALUE('nearest brewery', data.rows.name)
    }
  })
}

ON('save-record', identifyNeighborhood)
ON('save-record', nearestBrewery)

{% endhighlight %}