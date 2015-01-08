#encoding: UTF-8
require "slackhook/version"
module Slackhook
  include ::Webhook
  # Your code goes here...  
  def self.send_hook
    WebhookService.new(message: 'custom message', type: "error").send_hook
  end
end
