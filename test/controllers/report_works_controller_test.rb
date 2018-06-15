require 'test_helper'

class ReportWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get report_works_new_url
    assert_response :success
  end

  test "should get thanks" do
    get report_works_thanks_url
    assert_response :success
  end

end
