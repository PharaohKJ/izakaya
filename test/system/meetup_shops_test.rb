require "application_system_test_case"

class MeetupShopsTest < ApplicationSystemTestCase
  setup do
    @meetup_shop = meetup_shops(:one)
  end

  test "visiting the index" do
    visit meetup_shops_url
    assert_selector "h1", text: "Meetup Shops"
  end

  test "creating a Meetup shop" do
    visit meetup_shops_url
    click_on "New Meetup Shop"

    fill_in "Fix", with: @meetup_shop.fix
    fill_in "Meetup", with: @meetup_shop.meetup_id
    fill_in "Shop", with: @meetup_shop.shop_id
    click_on "Create Meetup shop"

    assert_text "Meetup shop was successfully created"
    click_on "Back"
  end

  test "updating a Meetup shop" do
    visit meetup_shops_url
    click_on "Edit", match: :first

    fill_in "Fix", with: @meetup_shop.fix
    fill_in "Meetup", with: @meetup_shop.meetup_id
    fill_in "Shop", with: @meetup_shop.shop_id
    click_on "Update Meetup shop"

    assert_text "Meetup shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Meetup shop" do
    visit meetup_shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meetup shop was successfully destroyed"
  end
end
