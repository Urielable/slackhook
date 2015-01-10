require "minitest/autorun"
require "slackhook"

class SlackhookTest < Minitest::Test
  def test_params_for_all_options_present 
    assert_equal "200",
      Slackhook.send_hook({webhook_url: webhook_url, text: "Unit test message", icon_type: ":trollface:", channel: "channel", username: "testbot"})
  end

  def test_params_for_missing_values
    assert_equal "200",
      Slackhook.send_hook({webhook_url: webhook_url, text: "Unit test missing", channel: "channel", username: "testbot"})
  end
end
