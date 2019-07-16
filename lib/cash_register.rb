class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @items
    @discount = discount

  end

  def add_item(title, price, number = 1)
    @total +=(price * quantity)
    apply_discount
    quantity.times do @items<<title

  end

  def apply_discount
    @total = total


  end






end
