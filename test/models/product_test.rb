require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product price must be positive" do
producto = Producto.new(title: "My Book Title",
description: "yyy",
image_url: "zzz.jpg")
producto.price = -1
assert producto.invalid?
assert_equal ["must be greater than or equal to 0.01"],
producto.errors[:price]
producto.price = 0
assert producto.invalid?
assert_equal ["must be greater than or equal to 0.01"],
producto.errors[:price]
producto.price = 1
assert producto.valid?
end

end
