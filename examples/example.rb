#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../lib/hugeurl'

tinyurl = URI.parse("http://tinyurl.com/242tthb")
puts tinyurl
puts " => " + tinyurl.to_huge.to_s

bitly = URI.parse("http://bit.ly/d4VYD2")
puts bitly
puts " => " + bitly.to_huge.to_s
