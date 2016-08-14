require "test_helper"

class TopicsControllerTest < ActionDispatch::IntegrationTest
  def test_show
    get topics_show_url
    assert_response :success
  end

end
