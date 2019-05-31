class NormalBrand < Brand

  def initialize(product)
    super(product)
    self.rating = "normal"
  end

  def pricing
    price_original = if @product.price_reference < 15
      @product.price_without_shipping_cost * 0.75
    elsif @product.price_reference < 25
      @product.price_without_shipping_cost * 0.775
    elsif @product.price_reference < 50
      @product.price_without_shipping_cost * 0.8
    elsif @product.price_reference < 75
      @product.price_without_shipping_cost * 0.825
    elsif @product.price_reference < 100
      @product.price_without_shipping_cost * 0.85
    elsif @product.price_reference < 200
      @product.price_without_shipping_cost * 0.875
    elsif @product.price_reference < 400
      @product.price_without_shipping_cost * 0.9
    elsif @product.price_reference < 600
      @product.price_without_shipping_cost * 0.925
    else
      @product.price_without_shipping_cost * 0.95
    end
  end

end
