require 'test_helper'

class ContenidoControllerTest < ActionDispatch::IntegrationTest
  test "should get nosotros" do
    get contenido_nosotros_url
    assert_response :success
  end

end
