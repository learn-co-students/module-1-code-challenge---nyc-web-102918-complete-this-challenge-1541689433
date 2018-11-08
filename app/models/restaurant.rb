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
    @@all.each do |restaurant|
      if restaurant.name == name
        return restaurant
      end
    end
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    arr_rating = reviews.map {|review| review.rating}
    arr_rating.reduce(:+) / arr_rating.count
  end

  def longest_review
    arr = reviews.map {|review| review.content}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end
end
