require 'rubygems'
require 'uri'
require 'net/http'
require 'net/https'

module Hugeurl
  VERSION = '0.0.6'
  def self.get(uri)
    uri = URI.parse uri unless uri.class.to_s =~ /^URI::/
    if uri.class == URI::HTTPS
      http = Net::HTTP.new(uri.host, 443)
      http.use_ssl = true
    else
      http = Net::HTTP.new(uri.host, uri.port)
    end
    res = http.request(Net::HTTP::Head.new uri.request_uri)
    return uri unless res['location']
    URI.parse res['location'] rescue return uri
  end
end

class URI::HTTP
  def to_huge
    Hugeurl.get(self)
  end
end
