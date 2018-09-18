require_relative("./fish.rb")
require_relative("./river.rb")

class Bear

attr_reader :name, :species
attr_accessor :stomach

def initialize(name, species, stomach)
  @name = name
  @species = species
  @stomach = stomach
end



#class end
end
