require 'test_helper'

class BarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bar_index_url
    assert_response :success
  end

  test "should get show" do
    get bar_show_url
    assert_response :success
  end

  test "should get create" do
    get bar_create_url
    assert_response :success
  end

  test "should get edit" do
    get bar_edit_url
    assert_response :success
  end

end
