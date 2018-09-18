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

def test_fish_gets_eaten()
  assert_equal(
    [
      "Jack",
      "Berta",
      "Christa"
    ], @river.fish_eaten("Angel")
  )
end

#class end
end
