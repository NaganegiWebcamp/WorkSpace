require 'test_helper'

class Admins::ReportWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_report_works_index_url
    assert_response :success
  end

end
