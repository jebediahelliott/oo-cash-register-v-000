class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
    self.items << item
    end
    self.total = self.total + price * quantity
  end

  def apply_discount
    if self.discount == nil
      return "There is no discount to apply."
    end
    self.discount = self.discount.to_f / 100
    self.total = self.total - (self.total * self.discount)
    self.total = self.total.to_int
    "After the discount, the total comes to $#{self.total}."
  end


end
