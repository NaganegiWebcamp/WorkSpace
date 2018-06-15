require 'test_helper'

class Admins::ReportContestWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_report_contest_works_index_url
    assert_response :success
  end

end
