require 'test_helper'

class ShoplistControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get shopping_list_show_url
    assert_response :success
  end
end
