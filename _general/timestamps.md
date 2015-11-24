---
layout: default
section: general
order: 6
title: "Timestamps"
description: "Overview of Using Timestamps With The Fulcrum API"
category: section
---

All timestamp values in Fulcrum are stored in UTC.
<!-- explain UTC and why it is useful and suggestions for conversion moment.js -->

Timestamps are served in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) Standard:

    2012-04-20T20:35:45Z

In Javascript:

    new Date("2012-04-20T20:35:45Z")
    => Fri Apr 20 2012 16:35:45 GMT-0400 (EDT)

In Ruby:

    Time.parse("2012-04-20T20:35:45Z")
    => 2012-04-20 20:35:45 UTC
