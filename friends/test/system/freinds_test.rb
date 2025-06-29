require "application_system_test_case"

class FreindsTest < ApplicationSystemTestCase
  setup do
    @freind = freinds(:one)
  end

  test "visiting the index" do
    visit freinds_url
    assert_selector "h1", text: "Freinds"
  end

  test "should create freind" do
    visit freinds_url
    click_on "New freind"

    fill_in "Email", with: @freind.email
    fill_in "First name", with: @freind.first_name
    fill_in "Last name", with: @freind.last_name
    fill_in "Phone", with: @freind.phone
    fill_in "Twitter", with: @freind.twitter
    click_on "Create Freind"

    assert_text "Freind was successfully created"
    click_on "Back"
  end

  test "should update Freind" do
    visit freind_url(@freind)
    click_on "Edit this freind", match: :first

    fill_in "Email", with: @freind.email
    fill_in "First name", with: @freind.first_name
    fill_in "Last name", with: @freind.last_name
    fill_in "Phone", with: @freind.phone
    fill_in "Twitter", with: @freind.twitter
    click_on "Update Freind"

    assert_text "Freind was successfully updated"
    click_on "Back"
  end

  test "should destroy Freind" do
    visit freind_url(@freind)
    click_on "Destroy this freind", match: :first

    assert_text "Freind was successfully destroyed"
  end
end
