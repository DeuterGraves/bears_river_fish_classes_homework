require_relative("./bear")

fish0 = Fish.new("Jack")
fish1 = Fish.new("Berta")
fish2 = Fish.new("Angel")
fish3 = Fish.new("Christa")

fishes = [fish0, fish1, fish2, fish3]

@river = River.new("Mississippi", fishes)

bear = Bear.new("Boris", "Asiatic Black Bear",[], "Mississippi")

p bear.eats_fish("Angel", "Mississippi")
p "the whole bear"
p bear
p "Bear's name"
p bear.name
p "How many fish in bear tummy?"
p bear.stomach.count()
p "***FISH***"
p "fish in river"
p @river.fishes()
p "count fish in river"
p @river.fishes().count()
p "Find Berta - SHE MUST BE SAVED!"
p @river.find_fish("Berta")
p "Eat Angel - he's a bastard fish."
p for_tum = @river.fish_eaten("Angel")
p "list fishes in river"
p @river.fishes()
p "back to the bear now what's in his tummy?"
p bear.stomach()
#p bear.stomach().push("purple")



# def eats_fish(fish_to_eat)
#   eaten_fish = @river.find_fish(fish_to_eat)
#   p eaten_fish
#   @bear.stomach().push(eaten_fish)
#   @river.fish_eaten(eaten_fish)
# end

# p "eat angel - total bastard"
# p bear.eats_fish("Angel")
p "count fish in river"
p @river.fishes().count()
p "list fish in river"
p @river.fishes()
p "check bear tummy"
p bear.stomach() << for_tum


# def eats_fish(eaten_fish)
#   for fish in @river.fishes
#     if fish.name == eaten_fish
#       @river.fishes.delete(fish)#delete the fish
#       #p eaten_fish
#     end
#     # p fish.name
#     # p ""
#   end
# end

#p eats_fish("Angel")
#
# p bear.eats_fish("Mississippi", "Angel")
