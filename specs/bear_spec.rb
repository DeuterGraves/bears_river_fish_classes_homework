require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

def setup()
  fish0 = Fish.new("Jack")
  fish1 = Fish.new("Berta")
  fish2 = Fish.new("Angel")
  fish3 = Fish.new("Christa")

  fishes = [fish0, fish1, fish2, fish3]

  river = River.new("Mississippi", fishes)

  @bear = Bear.new("Boris", "Asiatic Black Bear",[], river)

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


def test_bear_can_eat_fish()
  @bear.eats_fish("Angel", "Mississippi")
  assert_equal(1, @bear.stomach().count())
end







#class end
end
