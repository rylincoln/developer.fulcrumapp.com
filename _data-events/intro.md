---
layout: default
section: data_events
order: 1
title: "Data Events Introduction"
description: "Introduction to Fulcrum Data Events"
category: section
menu:
  - "Record Events": record-events
  - "Repeatable Events": repeatable-events
  - "Field Events": field-events
---

Data events are a powerful feature that allows users to perform actions on the mobile device when certain events are triggered. Go on ...

## Record Events

{:.table.table-striped.event-table}
| Event | Description | Listener Function Signature |
|--------|----------|-------------|-------------|
| `'load-record'` | Fires when the record editor is displayed | `ON('load-record', callback)` |
| `'new-record'` | Fires when a new record is created, after `'load-record'` | `ON('new-record', callback)` |
| `'edit-record'` | Fires when a record is edited, after `'load-record'` | `ON('edit-record', callback)` |
| `'save-record'` | Fires when a record is saved | `ON('save-record', callback)` |
| `'validate-record'` | Fires right before the record is saved to check any validations | `ON('validate-record', callback)` |
| `'change-geometry'` | Fires when a record's geometry changes | `ON('change-geometry', callback)` |
| `'change-project'` | Fires when a record's project changes | `ON('change-project', callback)` |
| `'change-status'` | Fires when a record's status changes | `ON('change-status', callback)` |

### Example

To set up a listener for a record event, use the [ON](/data-events/reference/on) function.

{% highlight  js %}
ON('validate-record', function (event) {
  // Do something to validate the record and call INVALID('message') if there is an error.
})
{% endhighlight %}

## Repeatable Events

{:.table.table-striped.event-table}
| Event | Description | Listener Function Signature |
|--------|----------|-------------|-------------|
| `'load-repeatable'` | Fires when a repeatable editor is displayed | `ON('load-repeatable', 'repeatable_field', callback)` |
| `'new-repeatable'` | Fires when a new repeatable is created, after `'load-repeatable'` | `ON('new-repeatable', 'repeatable_field', callback)` |
| `'edit-repeatable'` | Fires when a repeatable is edited, after `'load-repeatable'` | `ON('edit-repeatable', 'repeatable_field', callback)` |
| `'save-repeatable'` | Fires when a repeatable is saved | `ON('save-repeatable', 'repeatable_field', callback)` |
| `'validate-repeatable'` | Fires right before the repeatable is saved to check any validations | `ON('validate-repeatable', 'repeatable_field', callback)` |
| `'change-geometry'` | Fires when a repeatable's geometry changes | `ON('change-geometry', 'repeatable_field', callback)` |

### Example

Setting up listeners for repeatable events looks just like those for record events, except that you'll need to pass an additional parameter, the repeatable field.

{% highlight  js %}
ON('validate-repeatable', 'repeatable_field', function (event) {
  // Do something to validate the repeatable and call INVALID('message') if there is an error.
})
{% endhighlight %}

## Field Events

{:.table.table-striped.event-table}
| Event | Description | Listener Function Signature |
|--------|----------|-------------|-------------|
| `'click'` | Fires when a field is clicked (tapped) - mostly useful for hyperlink fields | `ON('click', 'field', callback)` |
| `'change'` | Fires when a field's value changes | `ON('change', 'field', callback)` |

### Example

When setting up listeners for field events, be sure to add the field as the second parameter.

{% highlight  js %}
ON('change', 'cover_type', function (event) {
  // Do something interesting when the cover_type field changes.
})
{% endhighlight %}

## Reference

Check out the full documentation on available events and functions by browsing the [complete list](/data-events/reference/).

## Functional Examples

We have a [library of examples](/data-events/examples/) available for learning what you can do with data events.
