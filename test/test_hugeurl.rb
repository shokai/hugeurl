require File.dirname(__FILE__) + '/test_helper.rb'

class TestHugeurl < Test::Unit::TestCase

  def setup
    @source = "http://shokai.org"
    @tinyurl = URI.parse("http://tinyurl.com/242tthb").to_huge
    @tco = URI.parse("http://t.co/sdMbEC7n").to_huge
  end

  def test_response
    assert true if @tco.class == URI::HTTP
  end

  def test_tco
    assert true if @tco.to_s == @source
  end

  def test_tinyurl
    assert true if @tinyurl.to_s == @source
  end

end
