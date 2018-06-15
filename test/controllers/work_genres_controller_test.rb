require 'test_helper'

class WorkGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get work_genres_show_url
    assert_response :success
  end

end
