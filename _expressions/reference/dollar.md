---
layout: default
section: expressions
title: "DOLLAR"
description: "Formats a number into a locale-specific currency format. This function is useful when including a currency amount in a longer piece of text. To display just a currency in a calculated field, it&#39;s recommended to set the display type of the calculated field to &#39;Currency&#39; and just return a number in the expression. When the display type of the calculated field is set to currency, the number is automatically displayed as a formatted currency."
category: section
permalink: /expressions/reference/dollar/
---

## DOLLAR

Formats a number into a locale-specific currency format. This function is useful when including a currency amount in a longer piece of text. To display just a currency in a calculated field, it's recommended to set the display type of the calculated field to 'Currency' and just return a number in the expression. When the display type of the calculated field is set to currency, the number is automatically displayed as a formatted currency.

### Parameters

`value` Number (__required__) - a dollar amount

`decimals` Number (optional)  [default = 2] - the number of decimal places (default is 2)

`currency` String (optional)  [default = locale default] - the currency code to display (e.g. USD, EUR, or AUD)

`language` String (optional)  [default = locale default] - the language locale used to format the currency. (e.g. en-US, pt-BR, or en-GB)

### Returns

String - formatted currency

### Examples

~~~
DOLLAR(1234.567)

// returns $1,234.57
~~~
{: .language-js}


~~~
// USD formatted in French
DOLLAR(1234.567, 2, 'USD', 'fr-FR')

// returns 1 234,57 $US
~~~
{: .language-js}


~~~
// Euro formatted in Portuguese
DOLLAR(1234.567, 2, 'EUR', 'pt-BR')

// returns €1.234,57
~~~
{: .language-js}