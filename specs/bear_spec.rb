require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

def setup()
  @bear = Bear.new("Boris", "Asiatic Black Bear",[])
end

def test_bear_can_haz_name()
  assert_equal("Boris", @bear.name())
end

def test_bear_can_haz_species()
  assert_equal("Asiatic Black Bear", @bear.species())
end

def test_bear_haz_no_fishes()
  assert_equal([], @bear.stomach())
end







#class end
end
