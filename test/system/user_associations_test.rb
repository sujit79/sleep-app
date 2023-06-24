require "application_system_test_case"

class UserAssociationsTest < ApplicationSystemTestCase
  setup do
    @user_association = user_associations(:one)
  end

  test "visiting the index" do
    visit user_associations_url
    assert_selector "h1", text: "User associations"
  end

  test "should create user association" do
    visit user_associations_url
    click_on "New user association"

    fill_in "User", with: @user_association.user_id
    fill_in "User to", with: @user_association.user_to
    click_on "Create User association"

    assert_text "User association was successfully created"
    click_on "Back"
  end

  test "should update User association" do
    visit user_association_url(@user_association)
    click_on "Edit this user association", match: :first

    fill_in "User", with: @user_association.user_id
    fill_in "User to", with: @user_association.user_to
    click_on "Update User association"

    assert_text "User association was successfully updated"
    click_on "Back"
  end

  test "should destroy User association" do
    visit user_association_url(@user_association)
    click_on "Destroy this user association", match: :first

    assert_text "User association was successfully destroyed"
  end
end
