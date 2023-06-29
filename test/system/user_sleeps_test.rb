require "application_system_test_case"

class UserSleepsTest < ApplicationSystemTestCase
  setup do
    @user_sleep = user_sleeps(:one)
  end

  test "visiting the index" do
    visit user_sleeps_url
    assert_selector "h1", text: "User sleeps"
  end

  test "should create user sleep" do
    visit user_sleeps_url
    click_on "New user sleep"

    fill_in "User", with: @user_sleep.user_id
    click_on "Create User sleep"

    assert_text "User sleep was successfully created"
    click_on "Back"
  end

  test "should update User sleep" do
    visit user_sleep_url(@user_sleep)
    click_on "Edit this user sleep", match: :first

    fill_in "User", with: @user_sleep.user_id
    click_on "Update User sleep"

    assert_text "User sleep was successfully updated"
    click_on "Back"
  end

  test "should destroy User sleep" do
    visit user_sleep_url(@user_sleep)
    click_on "Destroy this user sleep", match: :first

    assert_text "User sleep was successfully destroyed"
  end
end
