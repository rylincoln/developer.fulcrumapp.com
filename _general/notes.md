---
layout: default
section: general
order: 3
title: "API Notes"
description: "Other details about how the API works."
category: section
---

The API has specific behaviors around how it can be used:

* API calls are limited to 5,000 calls an hour per user.

* The `/api/v2/users` endpoint is the _only one_ that supports HTTP Basic authentication. All other endpoints require the API Key as either an HTTP request header or query string parameter.

* Using an HTTP header of `Accept: application/json` is required, otherwise you’ll receive a `406: Not Acceptable` response from the API.

* All of the index views use pagination. The following information will be returned in the root object to help you determine where you are in the query:

  ```
  {
    "current_page": 1,
    "total_pages": 1,
    "per_page": 50
  }
  ```

See the Fulcrum terms of service for more specific details on what limitations their are with API usage.
