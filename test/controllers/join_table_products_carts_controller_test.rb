require 'test_helper'

class JoinTableProductsCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get join_table_products_carts_create_url
    assert_response :success
  end

  test "should get update" do
    get join_table_products_carts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get join_table_products_carts_destroy_url
    assert_response :success
  end

end
