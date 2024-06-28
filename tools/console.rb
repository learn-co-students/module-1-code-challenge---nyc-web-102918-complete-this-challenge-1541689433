require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Bill", "Gates")
customer2 = Customer.new("Jack", "Ryan")
customer3 = Customer.new("Sam", "Adams")

restaurant1 = Restaurant.new("Baluchis")
restaurant2 = Restaurant.new("Spicy Shallot")
restaurant3 = Restaurant.new("Seva")

review1 = Review.new(customer1, restaurant1, 5, "Loved the food")
review2 = Review.new(customer2, restaurant2, 5, "Great food")
review3 = Review.new(customer3, restaurant3, 5, "Excellent")
review4 = Review.new(customer1, restaurant2, 4, "good quality food")
review5 = Review.new(customer2, restaurant3, 3, "Okay quality food")
review6 = Review.new(customer3, restaurant1, 1, "Poor quality food")

customer1.add_review("Tangra", 4, "love the food")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
