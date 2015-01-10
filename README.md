# Slackhook

Easily add Slack Webhook integration to your Ruby application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slackhook'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slackhook

## Usage

Slackhook is a gem for easily implement [Slack webhooks](https://api.slack.com/).

To use this gem you only need the webhook url. You can find this url using your slack account. Please go to [Incoming WebHooks page](https://dvz.slack.com/services/new/incoming-webhook) and select your default channel.

Well, now you are ready \0/!


## Quick start

```ruby
# This way is how you send messages to your default channel.
Slackhook.send_hook({webhook_url: "your_webhook_url", text: "test message"})`
```
You can use the *channel* option if the message is directed to a non default channel.

There are also *username* (**slackbot** as default) and *icon_type* options to be more specific about the nickname and avatar which would appear on the chat.

```ruby
> require "slackhook"
> Slackhook.send_hook({webhook_url: "your_webhook_url", text: "test message", channel: "@urielable", username: "nickname for bot", icon_type: ":trollface:"})
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/slackhook/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request