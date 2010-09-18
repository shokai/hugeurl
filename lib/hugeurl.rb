$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'uri'
require 'open-uri'

module Hugeurl
  VERSION = '0.0.2'
  def Hugeurl.get(url)
    res = open("http://search.twitter.com/hugeurl?url=#{url.to_s}").read
    URI.parse(res)
  end
end

class URI::HTTP
  def to_huge
    Hugeurl.get(self)
  end
end
