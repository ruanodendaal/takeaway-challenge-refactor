# Restaurant / Menu class
# loads menu options based on user selection

class Menu
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
    # {'Chicken' => 12.50,
    #            'Pizza' => 10,
    #            'Pasta'=> 8.99,
    #            'Steak'=> 25.99}
  end

  # let user choose menu, capture input and send to #load_menu
  def print_menu
    dishes.map do |item, price|
      "%s £%.2f" % [item.to_s.capitalize, price]
    end.join(", ")
  end
  #load_menu choice from csv

  def contain_item?(dish)
    self.dishes.include?(dish) ? true : "#{dish} not available in menu"
  end

  def dish_price(dish)
    self.dishes[dish]
  end


end
