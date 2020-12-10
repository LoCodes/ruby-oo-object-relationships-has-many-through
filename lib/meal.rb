# Meal
# #new
#   initializes with a waiter, a customer, a total and a tip
# .all
#   is class method that returns the contents of @@all


class Meal

    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter 
        @customer = customer 
        @total = total 
        @tip = tip 
        save
    end 

    def save
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
    

end