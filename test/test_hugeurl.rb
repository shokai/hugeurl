require File.dirname(__FILE__) + '/test_helper.rb'

class TestHugeurl < Test::Unit::TestCase

  def setup
    @source = "http://shokai.org"
    @tinyurl = URI.parse("http://tinyurl.com/242tthb").to_huge
    @tco = URI.parse("http://t.co/sdMbEC7n").to_huge
    @bitly_tinyurl_nested = URI.parse("http://bit.ly/TSLl6M").to_huge
  end

  def test_response
    assert @tco.class == URI::HTTP
  end

  def test_tco
    assert @tco.to_s == @source
  end

  def test_tinyurl
    assert @tinyurl.to_s == @source
  end

  def test_bitly_tinyurl_nested
    assert @bitly_tinyurl_nested.to_s == @source
  end
end
