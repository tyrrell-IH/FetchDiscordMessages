require "test_helper"

class DiscordMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get discord_messages_index_url
    assert_response :success
  end
end
