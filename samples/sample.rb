#!/usr/bin/env ruby
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'rubygems'
require 'hugeurl'

puts tinyurl = "http://tinyurl.com/242tthb"
puts " => " + Hugeurl.get(tinyurl).to_s

bitly = URI.parse("http://bit.ly/d4VYD2")
puts bitly
puts " => " + bitly.to_huge.to_s

puts tco = URI.parse("http://t.co/sdMbEC7n")
puts " => #{tco.to_huge}"

puts gyamp = URI.parse("http://gyamp.com/shokai/shokai")
puts " => #{gyamp.to_huge}"

puts bitly_tinyurl_nested = URI.parse("http://bit.ly/TSLl6M")
puts " => #{bitly_tinyurl_nested.to_huge}"
