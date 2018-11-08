class Review
  attr_reader :rating, :content, :customer, :restaurant
  @@all = []

  def initialize(rating, content, customer, restaurant)
    @rating, @content, @customer, @restaurant = rating, content, customer, restaurant
    @@all << self
  end

  def self.all
    @@all
  end
end
