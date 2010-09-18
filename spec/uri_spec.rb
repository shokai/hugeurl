require File.dirname(__FILE__) + '/spec_helper.rb'
require 'uri'

describe URI, 'URI.to_huge' do
  before(:all) do
    @res = URI.parse("http://tinyurl.com/242tthb").to_huge
  end

  it 'should return URI instance' do
    @res.class.should == URI::HTTP
  end

  it 'should return expanded URI' do
    @res.to_s.should == 'http://shokai.org'
  end
end

