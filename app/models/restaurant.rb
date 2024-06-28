class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end
  def customers
    reviews.map { |review| review.customer }.uniq
  end
    def reviews
      Review.all.select { |review| review.restaurant == self}
  end
  def average_star_rating
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    avg = (sum / reviews.length * 1.0)
    avg
  end
  def longest_review
    longest = ""
    contents_arr = reviews.map { |review| review.content }
    contents_arr.each do |content|
      if content.length > longest.length
        longest = content
      end
    end
    longest
  end

  def self.all
    @@all
  end

end
