require "test_helper"

class UserSleepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_sleep = user_sleeps(:one)
  end

  test "should get index" do
    get user_sleeps_url
    assert_response :success
  end

  test "should get new" do
    get new_user_sleep_url
    assert_response :success
  end

  test "should create user_sleep" do
    assert_difference("UserSleep.count") do
      post user_sleeps_url, params: { user_sleep: { user_id: @user_sleep.user_id } }
    end

    assert_redirected_to user_sleep_url(UserSleep.last)
  end

  test "should show user_sleep" do
    get user_sleep_url(@user_sleep)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_sleep_url(@user_sleep)
    assert_response :success
  end

  test "should update user_sleep" do
    patch user_sleep_url(@user_sleep), params: { user_sleep: { user_id: @user_sleep.user_id } }
    assert_redirected_to user_sleep_url(@user_sleep)
  end

  test "should destroy user_sleep" do
    assert_difference("UserSleep.count", -1) do
      delete user_sleep_url(@user_sleep)
    end

    assert_redirected_to user_sleeps_url
  end
end
