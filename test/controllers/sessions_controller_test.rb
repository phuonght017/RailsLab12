require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should get create" do
    post login_p_url
    assert_redirected_to 'http://www.example.com/login'
  end

  test "should get destroy" do
    delete logout_url
    assert_redirected_to 'http://www.example.com/login'
  end
end
