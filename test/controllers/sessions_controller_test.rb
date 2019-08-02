require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def test_new
    get sessions_new_url
    assert_response :success
  end

  def test_show
    get sessions_show_url
    assert_response :success
  end
end
