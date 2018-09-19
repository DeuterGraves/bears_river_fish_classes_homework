

class Bear

  attr_reader :name, :species, :roar
  attr_accessor :stomach

  def initialize(name, species, stomach, roar)
    @name = name
    @species = species
    @stomach = []
    @roar = roar
  end



#eat fish and puts in tummy
def eats_fish(fish_to_eat, river)
  fish_for_stomach = river.find_fish(fish_to_eat)
  river.fish_eaten(fish_to_eat)
  @stomach << fish_for_stomach
end

def stomach_count()
  stomach.count()
end

def roar_out()
  return "This is #{roar}!"
end

  #class end
end
