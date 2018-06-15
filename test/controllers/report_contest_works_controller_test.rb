require 'test_helper'

class ReportContestWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get report_contest_works_new_url
    assert_response :success
  end

  test "should get thanks" do
    get report_contest_works_thanks_url
    assert_response :success
  end

end
