---
layout: default
section: endpoints
order: 14
title: "Authorizations"
description: "Create, read, update, or delete authorizations (API keys)"
category: section
img: /assets/img/guides/
difficulty: advanced
menu:
  - "Endpoints": endpoints
  - "Notes": notes
  - "Examples": examples
---

The Authorizations API provides access to your authorizations (API keys). Authorizations can be created (POST) via HTTP Basic authentication using your Fulcrum username and password. Other methods require authentication via an API key as either an HTTP request header or query string parameter.

The Authorizations API can be used to create client side applications that do not expose your API key in source code. A username and password can be exchanged for a temporary, or non-expiring API key for use with other API endpoints.

## Endpoints

{:.table.table-striped}
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/v2/authorizations.json | Fetch the authorizations for your membership. |
| GET | /api/v2/authorizations/**:id**.json | Fetch a single authorization. |
| POST | /api/v2/authorizations.json | Create an authorization. Requires Basic authentication |
| PUT | /api/v2/authorizations/**:id**.json | Update an authorization. |
| DELETE | /api/v2/authorizations/**:id**.json | Delete an authorization. |

## Notes

* The POST method on the Authorizations API supports only HTTP Basic authentication while other methods require an API key as either an HTTP request header or query string parameter.
* Adding a `timeout` to an authorization will set it to expire in that number of seconds from when is created.
* Using an authorization with a timeout set will push back its expiration that number of seconds from when it is used, effectively allowing you to create an authorization with a short timeout that keeps working as long as you use it.
* Omitting a `timeout` when creating an authorization (or setting it to `null`) will create an authorization that never expires.

## Examples

Below is an example of using jQuery to create an expiring authorization in a client side application.

```js
var email = 'jane.doe@gmail.com';
var password = 'password';

var data = {
  authorization: {
    organization_id: 'dfdad810-373e-491b-b074-4022acd956cb',
    note: 'Some Application Name',
    timeout: 3600
  }
};

$.ajax({
  url: 'https://api.fulcrumapp.com/api/v2/authorizations.json',
  type: 'POST',
  data: JSON.stringify(data),
  dataType: 'json',
  contentType: 'application/json',
  headers: {
    'Authorization': 'Basic ' + window.btoa(email + ':' + password)
  },
  success: function (data) {
    console.log('Token is ' + data.authorization.token);
  },
  statusCode: {
    401: function() {
      window.alert('Incorrect credentials, please try again.');
    }
  }
});
```

### Valid Authorization Response

```json
{
  "authorization": {
    "note": "My API key",
    "expires_at": "2017-04-11T19:13:58.156Z",
    "timeout": 3600,
    "token": "1cd5ea4c893bb3bb4e3b570ada9042ce7a0c7e1980002e5368a0eb0fdeb0f6faf114968d71ce9884",
    "id": "38d0f9f7-dc39-47a6-80db-a15cfc998d7f"
  }
}
```
