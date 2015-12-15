---
layout: default
section: endpoints
order: 1
title: "Users"
description: "Access the metadata for a user account, including API Keys"
category: section
img: /assets/img/guides/
difficulty: advanced
menu:
  - "Endpoints": endpoints
  - "Notes": notes
  - "Examples": examples
---

The Users API provides access to user metadata (including API Keys) and can be conveniently accessed via HTTP Basic authentication using your Fulcrum username and password. You will need a valid API Key in order to work with any of the other API endpoints.

## Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/v2/users.json | Fetch the metadata for your user account. |

## Notes

* The Users API is the _only one_ that supports HTTP Basic authentication. All other endpoints require the API Key as either an HTTP request header or query string parameter.

* The Users API only allows GET requests. You must create new users or modify existing users via the web admin console.

## Example

Using Basic authentication to fetch your API Key allows you to build client-side applications that do not expose your API Key in the source code. Once retrieved, the API Key can be stored in `sessionStorage` or `localStorage` for additional API calls.

### cURL

`curl -u email:password https://api.fulcrumapp.com/api/v2/users`

### jQuery

All examples take advantage of [jQuery](http://jquery.com/) to perform asynchronous HTTP (Ajax) requests.

{% highlight javascript %}
$.ajax({
  type: "GET",
  url: "https://api.fulcrumapp.com/api/v2/users.json",
  contentType: "application/json",
  dataType: "json",
  headers: {
    "Authorization": "Basic " + btoa("email:password")
  },
  statusCode: {
    401: function() {
      alert("Incorrect credentials, please try again.");
    }
  },
  success: function (data) {
    // do something!
    console.log(data)
  }
});
{% endhighlight %}

**Note**: In case you were wondering,`btoa` encodes a string in base-64.

### Valid User Response

{% highlight javascript %}
{
  "user": {
    "first_name": "John",
    "last_name": "Doe",
    "email": "john.doe@gmail.com",
    "id": "2jbykjxds2t986zv2ktbch25",
    "contexts": [{
      "name": "John Doe",
      "id": "5tbk714i-0aia-uwxk-n3i9-e67ivvmt8qyn",
      "api_token": "j9fd9fw9fgk2x1ckg8vha9rgs71qlry0fyhueu70mcay1bxz564g5hiotxkrl1uq",
      "type": "organization",
      "role": {
        "name": "Owner",
        "is_system": true,
        "is_default": false,
        "can_manage_subscription": true,
        "can_update_organization": true,
        "can_manage_members": true,
        "can_manage_roles": true,
        "can_manage_layers": true,
        "can_manage_apps": true,
        "can_create_records": true,
        "can_update_records": true,
        "can_delete_records": true,
        "can_manage_projects": true,
        "can_manage_choice_lists": true,
        "can_manage_classification_sets": true,
        "can_change_status": true,
        "can_change_project": true,
        "can_assign_records": true,
        "can_import_records": true,
        "can_export_records": true,
        "can_run_reports": true,
        "id": "qel78mds-4bxx-dmdq-v8p3-tww9w6qwng2p",
        "created_at": "2013-10-15T17:40:25Z",
        "updated_at": "2013-10-15T17:40:25Z"
      },
      "plan": {
        "name": "My Organization",
        "description": "",
        "export_formats": ["csv", "xlsx", "filegdb", "shp", "spatialite", "sqlite", "postgres", "kml", "geojson"],
        "export_photos": false,
        "maps_data_quota": null,
        "public_slug": null,
        "public_color": "",
        "base_price_in_cents": 0,
        "price_in_cents": 0,
        "included_users": 1,
        "slug": "myorganization",
        "versioning_enabled": true,
        "webhooks_enabled": true,
        "view_history_enabled": true,
        "repeatables_enabled": true,
        "export_reports_enabled": true,
        "export_full_history_enabled": true,
        "record_merging_enabled": true,
        "export_changesets_enabled": true,
        "activity_feed_enabled": true,
        "data_shares_enabled": true,
        "data_shares_limit": null,
        "media_data_quota": 3221225472,
        "media_data_usage_includes_photos": true,
        "media_data_usage_includes_signatures": true,
        "media_data_usage_includes_videos": true,
        "videos_enabled": true,
        "audio_enabled": true,
        "id": "4g5eik8j-h3ic-wmbv-936z-ru7gppdo648p",
        "created_at": "2014-01-23T16:22:01Z",
        "updated_at": "2015-04-01T12:56:04Z"
      }
    }],
    "access": {
      "allowed": true
    }
  }
}
{% endhighlight %}
