class Restaurant

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def ratings
    reviews.map { |review| review.rating }
  end

  def average_star_rating
    ratings.reduce(:+).to_f / ratings.count
  end

  def contents
    reviews.map { |review| review.content }
  end

  def contents_length
    contents.map { |content| content.length }
  end

  def longest_review
    longest_length = contents_length.max

    reviews.find do |review|
      review.content.length == longest_length
    end
  end

end
