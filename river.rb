class River

attr_reader :name
attr_accessor :fishes

def initialize(name, fishes)
  @name = name
  @fishes = fishes
end

def find_fish(search_fish)
  for fish in fishes
    if fish.name == search_fish
      return fish
    end
  end
end

# totally works
# def fish_eaten(eat_fish)
#   for fish in fishes
#     if fish.name == eat_fish
#       fishes.delete(fish)
#     end
#   end
# end

def fish_eaten(eat_fish)
  fish = find_fish(eat_fish)
      fishes.delete(fish)
end

def fish_count()
  fishes.length()
end



end
