require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("jessie", "anderson")
customer2 = Customer.new("mike", "anderson")
restaurant1 = Restaurant.new("Olive Garden")
restaurant2 = Restaurant.new("Jacob's Pickles")
restaurant3 = Restaurant.new("pizza hut")
restaurant4 = Restaurant.new("Otto's Tacos")
review1 = Review.new(restaurant1, customer1, 5, "good food!!")
review1 = Review.new(restaurant1, customer2, 5, "good food:)")
customer1.add_review("Jacob's Pickles", "good food :)!", 4)
customer1.add_review("Jacob's Pickles", "good service :)!", 5)
customer1.add_review("pizza hut", ":(", 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
