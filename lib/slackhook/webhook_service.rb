#encoding: UTF-8
require 'net/http'
require "uri"
require "restclient"
require "json"

module WebhookService
  class Webhook
    def new(options = {})
      @message = options.fetch(:message, nil)
      @type    = options.fetch(:type, nil)
    end

    def send
      host = "https://hooks.slack.com"
      uri = URI::encode("#{host}/services/")
      @toSend = { text: @message, username: "factubot", icon_emoji: ":eyes:"}

      uri = URI.parse(uri)
      https = Net::HTTP.new(uri.host,uri.port)
      https.use_ssl = true
      req = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
      req.body = JSON.dump @toSend
      res = https.request(req)
      puts "Response #{res.code} #{res.message}: #{res.body}"
    end

  end
end