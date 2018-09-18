require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

def setup()


    @fish0 = Fish.new("Jack")
    @fish1 = Fish.new("Berta")
    @fish2 = Fish.new("Angel")
    @fish3 = Fish.new("Christa")

    @fishes = [@fish0, @fish1, @fish2, @fish3]

  @river = River.new("Mississippi", @fishes)
end

def test_river_has_name()
  assert_equal("Mississippi", @river.name())
end

def test_river_has_fish()
  assert_equal(4, @river.fishes().count())
end

def test_fish_gets_eaten()
  @river.fish_eaten("Angel")
  assert_equal(3, @river.fishes().count())
end

def test_find_fish_in_river()
  assert_equal(@fish2, @river.find_fish("Angel"))
end

#class end
end
