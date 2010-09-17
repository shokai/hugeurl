#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../lib/hugeurl'

tinyurl = URI.parse("http://tinyurl.com/242tthb")
puts tinyurl
puts " => " + Hugeurl.get(tinyurl).to_s

bitly = "http://bit.ly/d4VYD2"
puts bitly
puts " => " + Hugeurl.get(bitly).to_s
