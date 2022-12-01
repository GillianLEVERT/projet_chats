require "test_helper"

class JoinTableUserToCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_to_cart = join_table_user_to_carts(:one)
  end

  test "should get index" do
    get join_table_user_to_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_user_to_cart_url
    assert_response :success
  end

  test "should create join_table_user_to_cart" do
    assert_difference("JoinTableUserToCart.count") do
      post join_table_user_to_carts_url, params: { join_table_user_to_cart: {  } }
    end

    assert_redirected_to join_table_user_to_cart_url(JoinTableUserToCart.last)
  end

  test "should show join_table_user_to_cart" do
    get join_table_user_to_cart_url(@join_table_user_to_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_user_to_cart_url(@join_table_user_to_cart)
    assert_response :success
  end

  test "should update join_table_user_to_cart" do
    patch join_table_user_to_cart_url(@join_table_user_to_cart), params: { join_table_user_to_cart: {  } }
    assert_redirected_to join_table_user_to_cart_url(@join_table_user_to_cart)
  end

  test "should destroy join_table_user_to_cart" do
    assert_difference("JoinTableUserToCart.count", -1) do
      delete join_table_user_to_cart_url(@join_table_user_to_cart)
    end

    assert_redirected_to join_table_user_to_carts_url
  end
end
