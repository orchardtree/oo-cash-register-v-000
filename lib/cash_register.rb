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
    @total = @total
  end
  
end