require_relative("./fish.rb")
require_relative("./river.rb")

class Bear

  attr_reader :name, :species, :river
  attr_accessor :stomach

  def initialize(name, species, stomach, river)
    @name = name
    @species = species
    @stomach = []
    @river = river
  end



#eat fish and puts in tummy
def eats_fish(fish_to_eat, river)

  fish_for_stomach = @river.find_fish(fish_to_eat)
  @river.fish_eaten(fish_to_eat)
  @stomach << fish_for_stomach
end

  #class end
end
