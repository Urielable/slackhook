#encoding: UTF-8
require "slackhook/version"
require "slackhook/webhook_service"

module Slackhook
  def self.send_hook options
      # Send message to Slack
      #
      # Example:
      #   >> Slackhook.send_hook({webhook_url: "your_webhook_url", text: "message", channel: "@urielable", username: "testbot"})
      #   => "200"
      #
      # Arguments:
      #   webhook_url: (String)
      #   text: (String)
      #   channel: (String)
      #   username: (String)

    WebhookService::Webhook.new(options).send
  end
end
