class CashRegister

attr_accessor :total, :discount, :items, :last_transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transactions
  end

  def add_item(title, price, total = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      self.items << title
    end
    self.last_transactions = transaction
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
