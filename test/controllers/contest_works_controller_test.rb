require 'test_helper'

class ContestWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contest_works_index_url
    assert_response :success
  end

  test "should get show" do
    get contest_works_show_url
    assert_response :success
  end

  test "should get edit" do
    get contest_works_edit_url
    assert_response :success
  end

end
