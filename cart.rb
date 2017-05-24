require './products.rb'

class Cart

  def initialize
    @shopping_cart = []
  end

  def add_product(name, base_price)
    new_products = Products.new(name, base_price)
    @shopping_cart << new_products
    new_products
  end

  def remove_product(name)
    @shopping_cart.each do |item|
      if item.name == name
        @shopping_cart.delete(item)
      end
    end
    @shopping_cart
  end

  def total_cost_before_tax
    total_cost = 0
    @shopping_cart.each do |item|
      total_cost += item.base_price
    end
    total_cost
  end

  def total_cost_after_tax
    total_cost = 0
    @shopping_cart.each do |item|
      total_cost += (item.base_price * item.tax_rate) + item.base_price
    end
    total_cost
  end

end

cart = Cart.new

puts
puts cart.add_product("milk",3.5).inspect
puts cart.add_product("yogurt",2.3).inspect
puts cart.add_product("apple",5.3).inspect
puts
puts cart.inspect
puts cart.remove_product("milk")
puts
puts cart.inspect
puts cart.total_cost_before_tax
puts
puts cart.total_cost_after_tax
