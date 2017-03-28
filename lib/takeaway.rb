# build order
# read available options
# submit order

require_relative 'order'
require_relative 'menu'
require_relative 'sms'

class TakeAway

  def initialize(menu: ,order: nil, sms: nil)
    @menu = menu || Menu.new
    @order = order || Order.new(menu)
    @sms = sms || SMS.new
  end

  def show_menu
    menu.print_menu
  end

  # when all items added, place order
  def place_order(dishes)
    add_dishes(dishes)
    sms.send_sms
    order.total_price
  end


  private
  attr_reader :menu, :order, :sms

  # Twilo api
  def deliver
    sms.send_sms
  end

  def add_dishes(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
      # "#{dish} added to your basket"
    end
  end

  def price_match?(total)
    total.to_f == self.order.total_price
  end

end
