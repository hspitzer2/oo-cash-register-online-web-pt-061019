class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @last_transaction
  end

  def add_item(title, price, number = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      self.items << title
    end
    self.last_transaction = transaction
  end

  def apply_discount
    if @discount != 0
      @total = total.to_f * (1- @discount.to_f/ 100.0)
    "After the discount, the total comes to $#{@total.to_i}."
    else
    last_transaction
    end
  end
end
