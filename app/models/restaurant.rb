require_relative 'review.rb'

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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def num_reviews
      Review.all.select {|review| review.restaurant == self}.count
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.map {|review| review.rating}.reduce(:+)/num_reviews 
  end

end
