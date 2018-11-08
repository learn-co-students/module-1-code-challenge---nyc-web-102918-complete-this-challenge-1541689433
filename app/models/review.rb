class Review
  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def initialize(customer, restaurant, content)
    @rating = rating 
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end






end
