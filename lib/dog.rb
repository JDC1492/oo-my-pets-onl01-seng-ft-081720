class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@dogs = []
    def initialize(name="Lassie", owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@dogs << self
    end

    def self.all
      @@dogs
    end

end