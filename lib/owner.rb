class Owner
  attr_reader :name, :species
    @@all = []
  
    def initialize(name = "Beckham", species = "human")
      @name = name
      @species = species
      @@all << self
    end

    def say_species
      "I am a #{species}."
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
      Cat.all.select do |cat|
        if cat.owner == self
          cat
        end
      end
    end

    def dogs
      Dog.all.select do |dog|
        if dog.owner == self
          dog
        end
      end
    end

    def buy_cat(cat_instance)
      Cat.new(cat_instance, self)
      
    end

    def buy_dog(dog_instance)
      Dog.new(dog_instance, self)
    end

    def walk_dogs
      Dog.mood=("Happy")
      
    end
end