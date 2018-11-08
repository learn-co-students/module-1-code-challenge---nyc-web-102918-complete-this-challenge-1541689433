require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#########################
# instances of Customer #
carlo_fernando = Customer.new("Carlo", "Fernando")
kevin_mcalear = Customer.new("Kevin", "McAlear")
kevin_johnson = Customer.new("Kevin", "Johnson")

###########################
# instances of Restaurant #
lombardi = Restaurant.new("Lombardi")
grimaldi = Restaurant.new("Grimaldi")
jullian = Restaurant.new("Jullian")

####################################
# instances of Review              #
review1 = Review.new(5, "Best pizza in NYC!", carlo_fernando, lombardi)
carlo_fernando.add_review(4, "Good pizza! Nice view of the city!!!", grimaldi)
carlo_fernando.add_review(4, "Nice view!!!", grimaldi)
kevin_mcalear.add_review(5, "Great pizza!", lombardi)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
