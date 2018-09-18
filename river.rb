class River

attr_reader :name
attr_accessor :fishes

def initialize(name, fishes)
  @name = name
  @fishes = fishes
end

def fish_eaten(eat_fish)
  for fish in fishes
    if fish.name == eat_fish
      fishes.delete(fish)
    end
  end
end


end
