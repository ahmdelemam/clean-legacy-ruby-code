require_relative 'product.rb'
require_relative 'brand.rb'
require_relative 'high_brand.rb'
require_relative 'low_brand.rb'
require_relative 'normal_brand.rb'


brands = [
  HighBrand.new(Product.new(120, 12)),
  LowBrand.new(Product.new(50, 10)),
  NormalBrand.new(Product.new(500, 90))
]

brands.each { |brand| puts brand.pricing }
