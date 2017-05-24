class Products

  attr_accessor :name
  attr_reader :base_price, :tax_rate

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
  end

  def cal
    @total_price = (@base_price * @tax_rate) + @base_price
  end
end

products = Products.new("cheese",5.8)

# puts "Total price including tax is : $#{products.cal}"
