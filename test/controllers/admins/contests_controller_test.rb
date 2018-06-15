require 'test_helper'

class Admins::ContestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_contests_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_contests_show_url
    assert_response :success
  end

end
