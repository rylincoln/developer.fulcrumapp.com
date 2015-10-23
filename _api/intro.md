---
layout: default
section: api
order: 0
title: "Introduction"
description: "Basic concepts of working with the Fulcrum REST API to access, create, and modify data"
category: section
img: /assets/img/guides/
difficulty: advanced
menu:
  - "Base URL": base-url
  - "JSON Headers": json-headers
  - "Authentication": authentication
  - "Time Stamps": time-stamps
  - "Notes": notes
---

The Fulcrum JSON API uses REST endpoints for querying, creating, updating, and deleting data. The API provides users the ability to: query the URL for information using a GET request, to update the dataset by sending a PUT, or to delete the dataset by sending a DELETE.  Each operation is a URL endpoint that represents either a single object or a collection of objects.

## Base URL

The base URL for the Fulcrum API is `https://api.fulcrumapp.com`. Each individual API resource has its own set of methods and endpoints for creating, reading, updating, and deleting that resource. The endpoint should be appended to the base URL to create the API call. See the examples at the end of each documentation section for additional guidance.

## JSON Headers

For all requests, be sure to set the `Accept` HTTP header to `application/json`.

For `POST` and `PUT` requests, be sure to set the `Content-Type` HTTP header to `application/json`.

## Authentication

API calls are authenticated with a simple API Key (token) that is provided with the request. The API Key can be passed as an HTTP request header or as a parameter in the query string.

### Obtaining your API Key

The API Key is unique for each organization you have a membership with.

You can find the API Key through the Settings menu on your profile page (it is the second to last option on the right-side tabs in the Settings menu).

Alternatively, you can retrieve the API token for any organization you are a member of by using the `/api/v2/users` endpoint and HTTP Basic authentication in your terminal.

`curl -u email:password https://api.fulcrumapp.com/api/v2/users.json`

If you have at least one API Key, you can use it to retrieve the keys for your other organizations.

`curl -H "X-ApiToken: myapikey" https://api.fulcrumapp.com/api/v2/users.json`

**Note:** The API Key can be used to access and modify all data which you have permission to access within that organization, so be sure to keep the API key private. Only share it with others if you want them to have that access. It is bad practice to put API Keys in source code, especially if it’s publicly available. If you think your API key has been compromised, you can generate a new one from your Fulcrum account API settings page.

### HTTP Request Header

You can send the API Key as an HTTP request header.

`X-ApiToken = myapikey`

Test your API Key from a command prompt using cURL:

`curl -H "X-ApiToken: myapikey" https://api.fulcrumapp.com/api/v2/forms`

### Query String Parameter

You can send the API Key as a query string parameter. This can be useful when you can’t set an HTTP header for your request.

`token=myapikey`

Test your API Key from a command prompt using cURL.

`curl "https://api.fulcrumapp.com/api/v2/forms?token=myapikey"`

## Time Stamps

All timestamp values in Fulcrum are stored in UTC and served in the [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) standard: `2012-04-20T20:35:45Z`.

In Javascript (test with `node` in the terminal):

```
new Date("2012-04-20T20:35:45Z")
=> Fri Apr 20 2012 16:35:45 GMT-0400 (EDT)
```

In Ruby (test with `irb` in the terminal.  Don't forget to `require 'time'`):

```
Time.parse("2012-04-20T20:35:45Z")
=> 2012-04-20 20:35:45 UTC
```

## Pagination

All of the index views use pagination. The following information will be returned in the root object to help you determine where you are in the query:

```
{
  "current_page": 1,
  "total_pages": 1,
  "per_page": 50
}
```

## Notes

* API calls are limited to 5,000 calls an hour per user.

* The `/api/v2/users` endpoint is the _only one_ that supports HTTP Basic authentication. All other endpoints require the API Key as either an HTTP request header or query string parameter.

* Using an HTTP header of `Accept: application/json` is required, otherwise you’ll receive a `406: Not Acceptable` response from the API.
