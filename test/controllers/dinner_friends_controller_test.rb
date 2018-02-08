require 'test_helper'

class DinnerFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dinner_friend = dinner_friends(:one)
  end

  test "should get index" do
    get dinner_friends_url
    assert_response :success
  end

  test "should get new" do
    get new_dinner_friend_url
    assert_response :success
  end

  test "should create dinner_friend" do
    assert_difference('DinnerFriend.count') do
      post dinner_friends_url, params: { dinner_friend: { contact_id: @dinner_friend.contact_id, who: @dinner_friend.who } }
    end

    assert_redirected_to dinner_friend_url(DinnerFriend.last)
  end

  test "should show dinner_friend" do
    get dinner_friend_url(@dinner_friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_dinner_friend_url(@dinner_friend)
    assert_response :success
  end

  test "should update dinner_friend" do
    patch dinner_friend_url(@dinner_friend), params: { dinner_friend: { contact_id: @dinner_friend.contact_id, who: @dinner_friend.who } }
    assert_redirected_to dinner_friend_url(@dinner_friend)
  end

  test "should destroy dinner_friend" do
    assert_difference('DinnerFriend.count', -1) do
      delete dinner_friend_url(@dinner_friend)
    end

    assert_redirected_to dinner_friends_url
  end
end
