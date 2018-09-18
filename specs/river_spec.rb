require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

def setup()
  @river = River.new("Mississippi", ["Jack", "Berta", "Angel", "Christa"])
end

def test_river_has_name()
  assert_equal("Mississippi", @river.name())
end

def test_river_has_fish()
  assert_equal([
    "Jack",
    "Berta",
    "Angel",
    "Christa"
  ], @river.fishes())
end

#class end
end
