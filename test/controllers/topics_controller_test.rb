require "test_helper"

class TopicsControllerTest < ActionDispatch::IntegrationTest
  def test_show
    get new_topic_path
    assert_response :success
  end
end
