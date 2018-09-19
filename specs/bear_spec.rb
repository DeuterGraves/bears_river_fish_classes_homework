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

  @river = River.new("Mississippi", fishes)

  @bear = Bear.new("Tony", "Asiatic Black Bear",[], "GRRRRRRRRReat")

end

def test_bear_can_haz_name()
  assert_equal("Tony", @bear.name())
end

def test_bear_can_haz_species()
  assert_equal("Asiatic Black Bear", @bear.species())
end

def test_bear_haz_no_fishes()
  assert_equal([], @bear.stomach())
end


def test_bear_can_eat_fish()
  p @bear.eats_fish("Angel", @river)
  assert_equal(1, @bear.stomach_count())
end

def test_bear_stomach_count()
  assert_equal(0, @bear.stomach_count())
end

def test_bear_roar()
  assert_equal("This is GRRRRRRRRReat!", @bear.roar_out())
end



#class end
end
