require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get productos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_url
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post productos_url, params: { producto: { description: @producto.description, image_url: @producto.image_url, price: @producto.price, title: @producto.title } }
    end

    assert_redirected_to producto_url(Producto.last)
  end

  test "should show producto" do
    get producto_url(@producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_url(@producto)
    assert_response :success
  end

  test "should update producto" do
    patch producto_url(@producto), params: { producto: { description: @producto.description, image_url: @producto.image_url, price: @producto.price, title: @producto.title } }
    assert_redirected_to producto_url(@producto)
  end

  test "can't delete product in cart" do
    assert_difference('Product.count', 0) do
      delete product_url(products(:two))
    end
➤   assert_redirected_to products_url
➤ end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete producto_url(@producto)
    end

    assert_redirected_to productos_url
  end
end
