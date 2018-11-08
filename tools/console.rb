require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Amir", "Safoev")
customer2 = Customer.new("Joe", "O'Brian")
customer3 = Customer.new("Juan", "Perez")

restaurant1 = Restaurant.new("Chorsu")
restaurant2 = Restaurant.new("Palace")
restaurant3 = Restaurant.new("Diamond")

review1 = Review.new(customer1, restaurant1)
review2 = Review.new(customer2, restaurant2)
review3 = Review.new(customer3, restaurant3)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
