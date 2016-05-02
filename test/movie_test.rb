require 'json'
require 'rainbow'
require 'httparty'
require './Movie' #if we run 'rspec test/movie_test.rb', respec looks for movie in the root folder
require 'rspec'

# to run tests run rspec test/movie_test.rb

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end

  it "should be 1986" do
    @tg = Movie.new.to_hash
    @tg["Year"].should == "1986"
  end


  it "should be rated PG" do
    @tg = Movie.new.to_hash
    @tg["Rated"].should == "PG"
  end

end
