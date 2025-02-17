---
layout: default
section: expressions
order: 1
title: "Calculation Expressions Introduction"
description: "Introduction to Fulcrum Calculation Field Expressions"
category: section
---

Calculation fields can be used to write simple expressions to calculate values dynamically based on inputs from other form fields or any other custom logic. This can be simple ‘total’ calculations or complex equations referencing other calculation fields and even data contained in repeatable sections. Expressions are written in standard [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) with some [custom functions](/expressions/reference/) for accessing form data and record values.

## Reference

Check out the full documentation on available formulae by browsing the [complete list of calculation expressions](/expressions/reference/).

## Examples

We have a [library of examples](/expressions/examples/) available for showcasing what you can do with calculation fields. Feel free to contribute your own examples by [submitting a pull request](https://github.com/fulcrumapp/developer.fulcrumapp.com/tree/gh-pages/_expression-examples).

## Debugging

You can enable verbose error reporting in the app when building or troubleshooting complex expressions by setting `SHOWERRORS(true)`. Another useful way to interactively test expressions is to use the `eval()` function in combination with a text field and `INSPECT()`. This allows you to type in your code and immediately inspect how it is being evaluated.

![Setting Up An Eval Calculation](/public/img/calc-eval.png)
<hr>
![Evaluating A Calculation](/public/img/calc-eval-demo.png)
