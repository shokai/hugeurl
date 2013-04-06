module Hugeurl

  public
  def self.get(uri)
    uri = URI.parse uri unless uri.class.to_s =~ /^URI::/
    loop do
      res = self.get_redirect_to uri
      return res if res.to_s == uri.to_s
      uri = res
    end
  end

  private
  def self.get_redirect_to(uri)
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
