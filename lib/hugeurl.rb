$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'uri'
require 'net/http'
require 'net/https'

module Hugeurl
  VERSION = '0.0.5'
  def self.get(url)
    url = URI.parse url unless url.class.to_s =~ /^URI::/
    if url.class == URI::HTTPS
      http = Net::HTTP.new(url.host, 443)
      http.use_ssl = true
    else
      http = Net::HTTP.new(url.host, url.port)
    end
    res = http.head(url.path.size < 1 ? '/' : url.path)
    URI.parse res['location'] rescue return url
  end
end

class URI::HTTP
  def to_huge
    Hugeurl.get(self)
  end
end
