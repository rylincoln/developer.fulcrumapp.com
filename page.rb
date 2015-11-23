#!/usr/bin/env ruby

require 'rubygems'
require 'thor'
require 'json'
require 'yaml'
require 'rake'
require 'haml'
require 'fileutils'
require 'active_support/core_ext/object'
require 'active_support/core_ext/hash'
require 'kramdown'

class Page < Thor

  desc "exp", "Create a new expression example page."
  method_option :title, aliases: "-t", desc: "Page title", default: "new-help-page"
  def exp
    title   = options[:title]
    section = options[:section]
    slug    = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    file    = File.join("./_expression-examples/", "#{slug}.md")

    open(file, 'w') do |page|
      page.puts <<eos
---
layout: default
section: expressions
title: "#{title}"
description: "---full long description---"
category: section
---

Page content.

{% highlight  js %}
expression code sample.
{% endhighlight %}
eos
    end

    puts "Example '#{slug}.md' created."
  end

  no_tasks do

  end

end

Page.start
