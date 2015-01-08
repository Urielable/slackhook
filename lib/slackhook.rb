#encoding: UTF-8
require "slackhook/version"
include WebhookService

module Slackhook
  # Your code goes here...  
  def self.send_hook
    Webhook.new(message: 'custom message', type: "error").send
  end
end
