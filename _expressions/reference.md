---
layout: reference
section: expressions
order: 2
title: "Reference"
description: "Function reference for calculation fields"
category: section
---

# Calculation Expressions

<div class="row">
  <div class="col-xs-12 col-md-4">
    <input type="search" class="form-control search" placeholder="Search expressions" />
  </div>
</div>

### [ABS](/expressions/reference/abs/)

Returns the absolute value of a number.

### [ACOS](/expressions/reference/acos/)

Returns the inverse cosine of a value, in radians.

### [ACOSH](/expressions/reference/acosh/)

Returns the inverse hyperbolic cosine of a number.

### [AND](/expressions/reference/and/)

Returns true if all of the provided arguments are logically true, and false if any of the provided arguments are logically false.

### [AVERAGE](/expressions/reference/average/)

Returns the numerical average value in a dataset, ignoring text.

### [CEILING](/expressions/reference/ceiling/)

Rounds a number up to the nearest integer multiple of specified significance.

### [CHAR](/expressions/reference/char/)

Convert a number into a character according to the current Unicode table.

### [CHOICEVALUE](/expressions/reference/choicevalue/)

Returns the selected value for a choice field or classification field

### [CHOICEVALUES](/expressions/reference/choicevalues/)

Returns the selected values for a choice field or classification field

### [CLEAN](/expressions/reference/clean/)

Returns the text with the non-printable ASCII characters removed.

### [COALESCE](/expressions/reference/coalesce/)

Returns the first parameter whose value exists

### [CODE](/expressions/reference/code/)

Returns the numeric Unicode map value of the first character in the string provided.

### [COMPACT](/expressions/reference/compact/)

Removes empty items from an array

### [CONCATENATE](/expressions/reference/concatenate/)

Returns the concatenation of multiple values.

### [COS](/expressions/reference/cos/)

Returns the cosine of a value, in radians.

### [COSH](/expressions/reference/cosh/)

Returns the hyperbolic cosine of a number.

### [COUNT](/expressions/reference/count/)

Returns a count of the number of *numeric* values in a dataset.

### [COUNTA](/expressions/reference/counta/)

Returns a count of values in a dataset.

### [COUNTBLANK](/expressions/reference/countblank/)

Returns the number of blank values in a dataset.

### [DATE](/expressions/reference/date/)

Converts a provided year, month, and day into a date.

### [DATEADD](/expressions/reference/dateadd/)

Adds a number of days to a given date

### [DATEVALUE](/expressions/reference/datevalue/)

Converts a provided date string in a known format to a date value.

### [DAY](/expressions/reference/day/)

Returns the day of the month that a specific date falls on, in numeric format.

### [DEGREES](/expressions/reference/degrees/)

Converts an angle value in radians to degrees.

### [DOLLAR](/expressions/reference/dollar/)

Formats a number into a locale-specific currency format. This function is useful when including a currency amount in a longer piece of text. To display just a currency in a calculated field, it's recommended to set the display type of the calculated field to 'Currency' and just return a number in the expression. When the display type of the calculated field is set to currency, the number is automatically displayed as a formatted currency.

### [EMAIL](/expressions/reference/email/)

Returns the email address of the current user

### [EVEN](/expressions/reference/even/)

Returns number rounded up to the nearest even integer.

### [EXACT](/expressions/reference/exact/)

Tests whether two strings are identical.

### [EXP](/expressions/reference/exp/)

Returns Euler's number, e (~2.718) raised to a power.

### [FACT](/expressions/reference/fact/)

Returns the factorial of a number.

### [FACTDOUBLE](/expressions/reference/factdouble/)

Returns the double factorial of a number.

### [FALSE](/expressions/reference/false/)

Returns the boolean value `false`.

### [FIND](/expressions/reference/find/)

Returns the position at which a string is first found within text, case-sensitive.

### [FIXED](/expressions/reference/fixed/)

Formats a number with a fixed number of decimal places.

### [FLOOR](/expressions/reference/floor/)

Rounds a number down to the nearest integer multiple of specified significance.

### [FORMATNUMBER](/expressions/reference/formatnumber/)

Formats a number in a given locale. This function is useful when including a number in a longer piece of text. To display just a number in a calculated field, it's recommended to set the display type of the calculated field to 'Number' and just return a number in the expression. When the display type of the calculated field is set to 'Number', the number is automatically displayed as a formatted number.

### [GCD](/expressions/reference/gcd/)

Returns the greatest common divisor of one or more integers.

### [GETRESULT](/expressions/reference/getresult/)

Returns the current result value for the current expression

### [HASOTHER](/expressions/reference/hasother/)

Tests whether a choice field or classification field has an 'Other' value entered

### [IF](/expressions/reference/if/)

Returns one value if a logical expression is true and another if it is false.

### [INSPECT](/expressions/reference/inspect/)

Returns the string representation of a value. This function is useful for troubleshooting expressions.

### [INT](/expressions/reference/int/)

Rounds a number down to the nearest integer that is less than or equal to it.

### [ISBLANK](/expressions/reference/isblank/)

Checks whether the field's value is empty.

### [ISEVEN](/expressions/reference/iseven/)

Checks whether the provided value is an even number.

### [ISLOGICAL](/expressions/reference/islogical/)

Checks whether a value is `true` or `false`.

### [ISNAN](/expressions/reference/isnan/)

Test whether a value is not a number

### [ISNONTEXT](/expressions/reference/isnontext/)

Tests whether a value is non-textual.

### [ISNUMBER](/expressions/reference/isnumber/)

Tests whether a value is a number.

### [ISODD](/expressions/reference/isodd/)

Checks whether the provided value is an odd number.

### [ISSELECTED](/expressions/reference/isselected/)

Checks whether a given choice is selected for a choice field or classification field

### [ISTEXT](/expressions/reference/istext/)

Checks whether a value is text.

### [LATITUDE](/expressions/reference/latitude/)

Returns the latitude of the current feature (record or repeatable item).

### [LCM](/expressions/reference/lcm/)

Returns the least common multiple of one or more integers.

### [LEFT](/expressions/reference/left/)

Returns a substring from the beginning of a given string.

### [LEN](/expressions/reference/len/)

Returns the length of a string value.

### [LN](/expressions/reference/ln/)

Returns the the logarithm of a number, base `e` (Euler's number).

### [LOG](/expressions/reference/log/)

Returns the the logarithm of a number given a base.

### [LOG10](/expressions/reference/log10/)

Returns the the logarithm of a number, base 10.

### [LONGITUDE](/expressions/reference/longitude/)

Returns the longitude of the current feature (record or repeatable item)

### [LOWER](/expressions/reference/lower/)

Converts a specified string to lowercase.

### [MAX](/expressions/reference/max/)

Returns the maximum value in a given set of values.

### [MAXA](/expressions/reference/maxa/)

Returns the maximum numeric value in a given set of values.

### [MEDIAN](/expressions/reference/median/)

Returns the median value in a set of numeric values.

### [MID](/expressions/reference/mid/)

Returns a segment of a string value.

### [MIN](/expressions/reference/min/)

Returns the minimum value in a given set of values.

### [MINA](/expressions/reference/mina/)

Returns the minimum numeric value in a given set of values.

### [MOD](/expressions/reference/mod/)

Returns the result of the modulo operator, the remainder after a division operation.

### [MONTH](/expressions/reference/month/)

Returns the month of a given date.

### [NOT](/expressions/reference/not/)

Returns the opposite of a logical value - `NOT(true)` returns `false`; `NOT(false)` returns `true`.

### [NUM](/expressions/reference/num/)

Converts any value to a number

### [NUMS](/expressions/reference/nums/)

Converts multiple parameters to an array of numbers

### [ODD](/expressions/reference/odd/)

Rounds a number up to the nearest odd integer.

### [ONCE](/expressions/reference/once/)

Returns a value once, given the current value. This is useful to perform a calculation only once, the first time it's evaluated.

### [OR](/expressions/reference/or/)

Returns `true` if any of the provided arguments are logically true, and `false` if all of the provided arguments are logically false.

### [OTHER](/expressions/reference/other/)

Returns the current 'Other' value for a choice field or classification field

### [PI](/expressions/reference/pi/)

Returns the value of Pi to 15 decimal places.

### [POWER](/expressions/reference/power/)

Returns a number raised to a power.

### [PRECISION](/expressions/reference/precision/)

Returns the precision of a number

### [PRODUCT](/expressions/reference/product/)

Returns the result of multiplying a series of numbers together.

### [PROPER](/expressions/reference/proper/)

Capitalizes each word in a string (title case).

### [QUOTIENT](/expressions/reference/quotient/)

Returns the result of dividing one number by another.

### [RADIANS](/expressions/reference/radians/)

Converts a number of degrees to radians.

### [RAND](/expressions/reference/rand/)

Returns a random number between 0 and 1.

### [RANDBETWEEN](/expressions/reference/randbetween/)

Returns a random integer between two values.

### [RECORDID](/expressions/reference/recordid/)

Returns the ID of the current record. This function will always return the top level record ID even when used inside a repeatable. To get the repeatable item ID, use the `REPEATABLEID` function.

### [REPEATABLEID](/expressions/reference/repeatableid/)

Returns the ID of the current repeatable item.

### [REPEATABLENUMBER](/expressions/reference/repeatablenumber/)

Returns the sequential number of a repeatable item.

### [REPEATABLEVALUES](/expressions/reference/repeatablevalues/)

Return a specific field from multiple repeatable items

### [REPEATABLESUM](/expressions/reference/repeatablesum/)

Return the sum of a specific numeric field across multiple repeatable items

### [REPLACE](/expressions/reference/replace/)

Replaces a piece of a text string with a different string.

### [RIGHT](/expressions/reference/right/)

Returns a substring from the end of a given string.

### [ROLE](/expressions/reference/role/)

Returns the role name of the current user

### [ROUND](/expressions/reference/round/)

Rounds a number to a specified number of decimal places according to standard rounding rules.

### [ROUNDDOWN](/expressions/reference/rounddown/)

Rounds a number down to a desired number of decimal places.

### [ROUNDUP](/expressions/reference/roundup/)

Rounds a number up to a desired number of decimal places.

### [SEARCH](/expressions/reference/search/)

Returns the position at which a specified string is first found within a block of text. Ignores case.

### [SETRESULT](/expressions/reference/setresult/)

Sets the current result value for the current expression. This is useful in multiline expressions to set the result value.

### [SHOWERRORS](/expressions/reference/showerrors/)

Enable verbose errors to displays in the app. This is useful for troubleshooting complex expressions.

### [SIGN](/expressions/reference/sign/)

Returns the sign of a given input number. `-1` if negative, `1` if positive, `0` if zero.

### [SIN](/expressions/reference/sin/)

Returns the sine of a value, in radians.

### [SINH](/expressions/reference/sinh/)

Returns the hyperbolic sine of a number

### [SQRT](/expressions/reference/sqrt/)

Calculates the square root of a given number.

### [SQRTPI](/expressions/reference/sqrtpi/)

Calculates the square root of the product of Pi and a given number.

### [STATUS](/expressions/reference/status/)

Returns the current record status value.

### [STATUSLABEL](/expressions/reference/statuslabel/)

Returns the current record status label.

### [SUBSTITUTE](/expressions/reference/substitute/)

Replaces existing text with new text in a string.

### [SUM](/expressions/reference/sum/)

Calculates the sum of a range of values.

### [SUMSQ](/expressions/reference/sumsq/)

Calculates the sum of the squares of a range of values.

### [TIMEDIFF](/expressions/reference/timediff/)

Returns the difference between 2 time fields

### [TRIM](/expressions/reference/trim/)

Strips the leading and trailing spaces from a string.

### [TRUE](/expressions/reference/true/)

Returns the boolean value `true`.

### [TYPEOF](/expressions/reference/typeof/)

Returns the type of a value

### [UPPER](/expressions/reference/upper/)

Converts a specified string to uppercase.

### [USERFULLNAME](/expressions/reference/userfullname/)

Returns the full name of the current user

### [VERSIONINFO](/expressions/reference/versioninfo/)

Returns version information about the app.

### [YEAR](/expressions/reference/year/)

Returns the year of a given date.
