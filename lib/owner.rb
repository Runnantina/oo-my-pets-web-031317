require 'pry'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :fishes, :cats, :dogs, :pets

   @@all =[]

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats =>[], :dogs =>[]}

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    # can buy fish that is an instance of the fish class
    @pets[:fishes] << Fish.new(name)

  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)

  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)

  end

  def walk_dogs
    # not looking for a parameter
    # when method walk_dogs is called, means dogs are happer afterwards.
    # which can only mean this method  changes every dog's mood.
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end

  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |animal_species, animals|
      animals.each do |info|
        info.mood = "nervous"
      end
    end
    @pets.clear
  end


  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
