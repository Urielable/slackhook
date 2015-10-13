#encoding: UTF-8
require 'net/http'
require "uri"
require "json"

module WebhookService
  class Webhook
    def initialize options = {}
      raise ArgumentError.new('icon_type and icon_url are mutualy exclusive!') if options[:icon_type].present? && options[:icon_url].present?
      @text        = options.fetch(:text, nil)
      @icon_type   = options.fetch(:icon_type, nil)
      @icon_url    = options.fetch(:icon_url, nil)
      @channel     = options.fetch(:channel, nil)
      @username    = options.fetch(:username, nil)
      @webhook_url = options.fetch(:webhook_url, nil)
    end

    def send
      uri           = URI::encode(@webhook_url)
      @toSend       = { channel: @channel, text: @text, username: @username }

      if @icon_type.present?
        @toSend.merge!(icon_emoji: @icon_type)
      elsif @icon_url.present?
        @toSend.merge!(icon_url: @icon_url)
      end

      uri           = URI.parse(uri)
      https         = Net::HTTP.new(uri.host,uri.port)
      https.use_ssl = true
      req           = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
      req.body      = JSON.dump @toSend
      res           = https.request(req)
      res.code
    end
  end
end