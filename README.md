# Slackhook

Easily add Slack WebHooks integration and send messages from your Ruby application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slackhook'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install slackhook
```

## Usage



To use this gem you only need to configure the Incoming WebHook integration in Slack.

You can find this using your slack account and going to [Incoming WebHooks](https://api.slack.com/) and select your default channel.

Well, now you are ready to send messages to Slack channels \0/!


## Quick start

```ruby
# This is how you send messages to your default channel.
Slackhook.send_hook({webhook_url: "your_webhook_url", text: "test message"})
```

There are also ```username```  and ```icon_type``` (**slackbot** is the default) options to be more specific about the nickname and avatar which would appear on the chat.

You can use the ```channel``` option if the message is goint to be sent to a non default channel.

```ruby
> require "slackhook"
> Slackhook.send_hook({ webhook_url: "your_webhook_url",
                        text: "test message",
                        channel: "@your-channel",
                        username: "testbot",
                        icon_type: ":trollface:"})
```

## Contributing

1. [Fork it](https://github.com/Urielable/slackhook/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
