#!/usr/bin/env ruby

require 'rubygems'
require 'hpricot'
require 'open-uri'

html_doc = Hpricot(open("http://www.ccc.govt.nz/weatherdata/waterweb.htm"))

# gah, why doesn't the City Council know how to write proper XHTML.
temperature = html_doc.search("//table//table//table//td/font/b")[1].inner_html.to_f
	
say = if temperature < 15
        "damn cold outside"
      elsif tempature > 25
        "ridiculously hot outside"
      else
        "nice to see you"
      end

puts "Christchurch on Rails"
puts "User group meet up"
puts "Come inside it's #{say}."

