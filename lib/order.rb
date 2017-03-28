# adding specific items to basket

require_relative 'menu'

class Order

  attr_reader :dishes, :menu

  def initialize(menu)
    @menu = menu
    @dishes = {}
  end

  # add dishes if they already in hash
  def add(dish, quantity)
    raise NoItemError, "#{dish.capitalize} not on the menu" unless menu.contain_item?(dish)
    dishes[dish] = quantity
  end

  def total_price
    item_totals.inject(:+).round(2)
  end


  private

  attr_writer :menu

  def item_totals
    dishes.map do |dish, quantity|
      menu.dish_price(dish) * quantity
    end
  end

end


class NoItemError < StandardError; end
