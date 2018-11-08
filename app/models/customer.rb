class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|name_match| name_match.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|name_match| name_match.first_name == name}
  end

  def self.all_names
    @@all.map {|fn| fn.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self.full_name, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select{|ar| ar.customer == self.full_name}.count
  end

  def restaurants
    Review.all.select do |r|
      if r.customer == self.full_name
        r.restaurant
# I need to return all of the restaurants that the  customer has reviewed before, from the review class. To do that, I need to go within reviews, match each review instance to the customer calling it, and return the value of the restaurants they reviewed. At the end, using uniq will give me a one-each list.
  end.uniq
end

end
