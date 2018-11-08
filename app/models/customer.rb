class Customer
  attr_accessor :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
@@all << self
  end

def self.all
@@all
end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
  Customer.all.map do |customer|
   customer.full_name
   end
 end

 def self.find_by_name(name)
   Customer.all_names.find do |customer|
     customer == name
   end
 end

def self.find_all_by_first_name(name)
Customer.all.map do |customer|
  customer.first_name
end   << name
end

def add_review(restaurant, content, rating)
Review.new(self, restaurant, content)
end
 def num_reviews
   Review.all .select do |review|
     review.customer == self
   end
 end

 def passenger_names
  num_reviews.map do |review|
    review.restaurant
  end.uniq
end




end
