# Waiter
# #new
#   initializes with a name and years of experience
# .all
#   is class method that returns the contents of @@all

class Waiter

    attr_accessor :name, :years 

    @@all = []

    def initialize(name, years)
        @name = name 
        @years = years
        save
    end 

    def save 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    # Waiter
    # #new_meal
    #   initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip
    # #meals
    #   returns an Array of Meal instances associated with this waiter
    # #best_tipper
    #   returns the Customer instance associated with the meal that received the largest tip

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end 


    def meals
        Meal.all.select {|meal| meal.waiter == self}  #checking for waiter now -self
    end 


    def best_tipper
        best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
        best_tipped_meal.customer
    end 
end