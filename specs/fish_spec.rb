require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

def setup()
  @fish = Fish.new("Sam")
end

def test_fish_has_name()
  assert_equal("Sam", @fish.name())
end

#class end
end
