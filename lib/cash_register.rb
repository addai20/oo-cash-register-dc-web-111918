require 'pry'

class CashRegister

  attr_accessor :total, :title, :price, :discount, :quantity
  attr_reader


  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def total
    @total
  end

  #discount is a percentage
  #consider creating a custom reader/ writer for either total or quantity
  def add_item(title, price, quantity =1)
    # discount_price = price - discount
    quantity.times {@items << title}

    self.total += price * quantity
    # self.total += discount_price
  end


  def apply_discount


    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (1.0-(self.discount/100.0))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  # def self.all
  #   @@all
  # end


  def items
    # binding.pry
    @items

  end


  def void_last_transaction
    self.total = 0
  end

end
