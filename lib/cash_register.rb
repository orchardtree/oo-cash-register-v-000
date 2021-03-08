require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    i = 0
    until i == quantity
      @items << item
      i += 1
    end
  end
  
  def apply_discount
    @total = @total * ((100 - @discount) / 100.00)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.round}."
    end
  end
  
  def void_last_transaction
    @total -= price * quantity
  end
  
end