require File.dirname(__FILE__) + '/spec_helper.rb'
require 'uri'

describe Hugeurl, 'expand URL string "http://tinyurl.com/242tthb"' do
  before(:all) do
    @res = Hugeurl.get("http://tinyurl.com/242tthb")
  end

  it 'should return URI instance' do
    @res.class.should == URI::HTTP
  end

  it 'should return expanded URI' do
    @res.to_s.should == 'http://shokai.org'
  end
end

describe Hugeurl, 'expand URI instance "http://bit.ly/d4VYD2"' do
  before(:all) do
    @res = Hugeurl.get(URI.parse("http://bit.ly/d4VYD2"))
  end

  it 'should return URI instance' do
    @res.class.should == URI::HTTP
  end

  it 'should return expanded URI' do
    @res.to_s.should == 'http://shokai.org'
  end
end
