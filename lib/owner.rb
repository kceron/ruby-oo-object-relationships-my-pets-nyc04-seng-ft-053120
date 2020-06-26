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
    Cat.all.select {|cat| cat.owner == self}
  end

  #returns a collection of all the dogs that belong to the owner
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end

  #can buy a cat that is an instance of the Cat class
  #knows about its cats 
  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  #can buy a dog that is an instance of the Dog class
  #knows about its dogs 
  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  # walks the dogs which makes the dogs' moods happy
  def walk_dogs
    self.dogs.each{|dog|dog.mood="happy"}
  end

  #feeds cats which makes the cats' moods happy
  def feed_cats
    self.cats.each{|cat|cat.mood="happy"}
  end

  #can sell all its pets, which makes them nervous 
  #can sell all its pets, which leaves them without an owner
  def sell_pets 
    self.dogs.each { |dogs| dogs.mood = "nervous" 
    dogs.owner = nil}
    self.cats.each { |cats| cats.mood = "nervous" 
    cats.owner = nil}
  end

  #can list off its pets
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end