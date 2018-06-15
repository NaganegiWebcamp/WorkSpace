require 'test_helper'

class Admins::RootsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get admins_roots_top_url
    assert_response :success
  end

end
