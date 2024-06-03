require "application_system_test_case"

class MainsTest < ApplicationSystemTestCase
  setup do
    @main = mains(:one)
  end

  test "visiting the index" do
    visit mains_url
    assert_selector "h1", text: "Mains"
  end

  test "should create main" do
    visit mains_url
    click_on "New main"

    fill_in "Email", with: @main.email
    fill_in "Firstname", with: @main.firstname
    fill_in "Lastname", with: @main.lastname
    fill_in "Phone", with: @main.phone
    fill_in "Twitter", with: @main.twitter
    click_on "Create Main"

    assert_text "Main was successfully created"
    click_on "Back"
  end

  test "should update Main" do
    visit main_url(@main)
    click_on "Edit this main", match: :first

    fill_in "Email", with: @main.email
    fill_in "Firstname", with: @main.firstname
    fill_in "Lastname", with: @main.lastname
    fill_in "Phone", with: @main.phone
    fill_in "Twitter", with: @main.twitter
    click_on "Update Main"

    assert_text "Main was successfully updated"
    click_on "Back"
  end

  test "should destroy Main" do
    visit main_url(@main)
    click_on "Destroy this main", match: :first

    assert_text "Main was successfully destroyed"
  end
end
