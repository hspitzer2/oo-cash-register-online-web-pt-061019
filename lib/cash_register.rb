class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, number = 1)
    @total +=(price * quantity)
    apply_discount


  end






end
