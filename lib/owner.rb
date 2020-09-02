class Owner
  attr_reader :name, :species
    @@all = []
    @@count = 0
  
    def initialize(name = "Beckham", species = "human")
      @name = name
      @species = species
      @@all << self

    end

    def say_species
      "I am a human."
    end

    def self.all
      @@all
    end
    
    def self.count
      @@all.length
    end

    def self.reset_all
    @@all.clear
    end

    def cats
      Cat.all
    end
end