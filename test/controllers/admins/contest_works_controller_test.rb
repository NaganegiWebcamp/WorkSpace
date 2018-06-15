require 'test_helper'

class Admins::ContestWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_contest_works_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_contest_works_show_url
    assert_response :success
  end

end
