class Product
  attr_accessor :shipping_cost, :price_reference

  def initialize(price_reference, shipping_cost)
    self.price_reference = price_reference
    self.shipping_cost = shipping_cost
  end

  def price_without_shipping_cost
    price_reference - shipping_cost
  end

end
