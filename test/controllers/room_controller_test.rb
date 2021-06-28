require 'test_helper'

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get room_index_url
    assert_response :success
  end

  test "should get new" do
    get room_new_url
    assert_response :success
  end

end
