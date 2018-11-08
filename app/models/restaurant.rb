class Restaurant
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name (name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    reviews_array = self.reviews do |reviews|
      reviews.customer
    end

    reviews_array.map do |review|
      review.customer
    end

  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    rating_total = 0
    Review.all.each do |review|
      rating_total += review.rating
    end
    rating_total/Review.all.count
  end

  def longest_review
    array = Review.all.find do |review|
      review.content.length
    end

    array.content
  end

  def self.all
    @@all
  end

end
