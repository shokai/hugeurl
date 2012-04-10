$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'uri'
require 'net/http'

module Hugeurl
  VERSION = '0.0.3'
  def self.get(url)
    url = URI.parse url unless url.class.to_s =~ /^URI::/
    res = Net::HTTP.start(url.host, url.port).
      head(url.path.size < 1 ? '/' : url.path)
    URI.parse res['location'] rescue return url
  end
end

class URI::HTTP
  def to_huge
    Hugeurl.get(self)
  end
end
