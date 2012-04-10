#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../lib/hugeurl'

puts tinyurl = "http://tinyurl.com/242tthb"
puts " => " + Hugeurl.get(tinyurl).to_s

bitly = URI.parse("http://bit.ly/d4VYD2")
puts bitly
puts " => " + bitly.to_huge.to_s

puts tco = URI.parse("http://t.co/sdMbEC7n")
puts " => #{tco.to_huge}"

puts gyamp = URI.parse("http://gyamp.com/shokai/shokai")
puts " => #{gyamp.to_huge}"
