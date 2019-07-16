class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
    @last_transaction
  end

  def add_item(title, price, number = 1)
    @total +=(price * quantity)
    apply_discount
    quantity.times do @items<< title
  end

  def apply_discount
    @total = total.to_f * discount/100.0
    last_transaction
  end
 end
end
