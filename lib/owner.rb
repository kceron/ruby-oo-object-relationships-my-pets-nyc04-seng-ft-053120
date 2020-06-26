require 'pry'

class Owner
  attr_reader :name, :species 
  @@all = []

  def initialize(name)
    @name = name 
    @species = "human"

    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count 
    all.count
  end

  def self.reset_all
    all.clear
  end

  #returns a collection of all the cats that belong to the owner 
  def cats

  end

  #returns a collection of all the dogs that belong to the owner
  def dogs 

  end

  #can buy a cat that is an instance of the Cat class
  #knows about its cats 
  def buy_cat

  end

  #can buy a dog that is an instance of the Dog class
  #knows about its dogs 
  def buy_dog

  end

  # walks the dogs which makes the dogs' moods happy
  def walks_dog 

  end

  #feeds cats which makes the cats' moods happy
  def feed_cats

  end

  #can sell all its pets, which makes them nervous 
  #can sell all its pets, which leaves them without an owner
  def sell_pets 

  end

  #can list off its pets
  def list_pets
    
  end

end