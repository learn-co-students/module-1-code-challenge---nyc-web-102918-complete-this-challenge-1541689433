require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



customer1 = Customer.new("eizik", "gottesfeld")
customer2 = Customer.new("samuel", "taub")
customer3 = Customer.new("babby", "gottesfeld")


restaurant1 = Restaurant.new("restaurant1")
restaurant2 = Restaurant.new("restaurant2")
restaurant3 = Restaurant.new("restaurant3")


review1 = Review.new(restaurant1, customer1,"great" ,5)
review4 = Review.new(restaurant1, customer1,"great" ,5)
review2 = Review.new(restaurant2, customer2, "good",4)
review3 = Review.new(restaurant3, customer3, "bad",3)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
