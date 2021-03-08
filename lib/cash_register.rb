require 'pry'
class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(product_title, product_price, quantity = 1)
    @total += product_price * quantity
  end
  
  def apply_discount
    @total = @total * ((100 - @discount) / 100.00)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.round}."
    end
  end
  
end