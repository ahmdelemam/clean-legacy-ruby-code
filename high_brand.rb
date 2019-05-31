class HighBrand < Brand

  def initialize(product)
    super(product)
    self.rating = "high"
  end

  def pricing
    price_original = if @product.price_reference < 15
      (@product.price_without_shipping_cost * 0.75) * 1.1
    elsif @product.price_reference < 25
      (@product.price_without_shipping_cost * 0.775) * 1.1
    elsif @product.price_reference < 50
      (@product.price_without_shipping_cost * 0.8) * 1.1
    elsif @product.price_reference < 75
      (@product.price_without_shipping_cost * 0.825) * 1.1
    elsif @product.price_reference < 100
      (@product.price_without_shipping_cost * 0.85) * 1.1
    elsif @product.price_reference < 200
      (@product.price_without_shipping_cost * 0.875) * 1.1
    elsif @product.price_reference < 400
      (@product.price_without_shipping_cost * 0.9) * 1.1
    elsif @product.price_reference < 600
      (@product.price_without_shipping_cost * 0.925) * 1.1
    else
      (@product.price_without_shipping_cost * 0.95) * 1.1
    end
  end

end
