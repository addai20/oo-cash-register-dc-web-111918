class CashRegister
  attr_writer 
  attr_accessor :total, :price, 
  
  
  
  def initialize(total = 0)
    @total = total
  end
  
  def total
    @total
  end
  
  def add_item(title, price)
  
  end
  
end

cash_reg = CashRegister.new(total)
