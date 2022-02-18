require "test_helper"

class RegisteredCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registered_courses_index_url
    assert_response :success
  end

  test "should get show" do
    get registered_courses_show_url
    assert_response :success
  end

  test "should get new" do
    get registered_courses_new_url
    assert_response :success
  end

  test "should get edit" do
    get registered_courses_edit_url
    assert_response :success
  end
end
