require 'test_helper'

class Admins::WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_works_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_works_show_url
    assert_response :success
  end

end
