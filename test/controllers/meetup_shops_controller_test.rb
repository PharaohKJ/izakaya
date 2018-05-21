require 'test_helper'

class MeetupShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meetup_shop = meetup_shops(:one)
  end

  test "should get index" do
    get meetup_shops_url
    assert_response :success
  end

  test "should get new" do
    get new_meetup_shop_url
    assert_response :success
  end

  test "should create meetup_shop" do
    assert_difference('MeetupShop.count') do
      post meetup_shops_url, params: { meetup_shop: { fix: @meetup_shop.fix, meetup_id: @meetup_shop.meetup_id, shop_id: @meetup_shop.shop_id } }
    end

    assert_redirected_to meetup_shop_url(MeetupShop.last)
  end

  test "should show meetup_shop" do
    get meetup_shop_url(@meetup_shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_meetup_shop_url(@meetup_shop)
    assert_response :success
  end

  test "should update meetup_shop" do
    patch meetup_shop_url(@meetup_shop), params: { meetup_shop: { fix: @meetup_shop.fix, meetup_id: @meetup_shop.meetup_id, shop_id: @meetup_shop.shop_id } }
    assert_redirected_to meetup_shop_url(@meetup_shop)
  end

  test "should destroy meetup_shop" do
    assert_difference('MeetupShop.count', -1) do
      delete meetup_shop_url(@meetup_shop)
    end

    assert_redirected_to meetup_shops_url
  end
end
