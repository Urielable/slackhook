#encoding: UTF-8
require "slackhook/version"
require "slackhook/webhook_service"

module Slackhook
  # Your code goes here...  
  def self.send_hook options
    WebhookService::Webhook.new(options).send
  end
end
