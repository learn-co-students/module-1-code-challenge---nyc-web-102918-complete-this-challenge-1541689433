class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end


  def self.find_by_name(name)
    Review.all.find do |review|
    review.restaurant == name
  end 
end


end
