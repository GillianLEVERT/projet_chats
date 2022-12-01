require "application_system_test_case"

class JoinTableUserToCartsTest < ApplicationSystemTestCase
  setup do
    @join_table_user_to_cart = join_table_user_to_carts(:one)
  end

  test "visiting the index" do
    visit join_table_user_to_carts_url
    assert_selector "h1", text: "Join table user to carts"
  end

  test "should create join table user to cart" do
    visit join_table_user_to_carts_url
    click_on "New join table user to cart"

    click_on "Create Join table user to cart"

    assert_text "Join table user to cart was successfully created"
    click_on "Back"
  end

  test "should update Join table user to cart" do
    visit join_table_user_to_cart_url(@join_table_user_to_cart)
    click_on "Edit this join table user to cart", match: :first

    click_on "Update Join table user to cart"

    assert_text "Join table user to cart was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table user to cart" do
    visit join_table_user_to_cart_url(@join_table_user_to_cart)
    click_on "Destroy this join table user to cart", match: :first

    assert_text "Join table user to cart was successfully destroyed"
  end
end
