class River

attr_reader :name
attr_accessor :fishes

def initialize(name, fishes)
  @name = name
  @fishes = fishes
end

def fish_eaten(fish_name)
  for fish in @fishes
    if fish == fish_name
      @fishes.delete(fish_name)
    end
  end
end


end
