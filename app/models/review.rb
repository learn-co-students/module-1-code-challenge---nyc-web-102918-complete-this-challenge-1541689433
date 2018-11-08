require_relative 'customer.rb'
require_relative 'restaurant.rb'

class Review
  attr_reader :customer, :restaurant, :rating, :content
  @@all = []

  def initialize(restaurant, customer, rating, content)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

end
