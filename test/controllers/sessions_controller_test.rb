require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def test_new
    get new_session_url
    assert_response :success
  end
end
