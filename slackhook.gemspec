# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackhook/version'

Gem::Specification.new do |spec|
  spec.name          = "slackhook"
  spec.version       = Slackhook::VERSION
  spec.authors       = ["Urielable"]
  spec.email         = ["uriel85@gmail.com"]
  spec.summary       = %q{Easily add Slack Webhook integration to your Ruby application.}
  spec.description   = %q{Easily add Slack Webhook integration to your Ruby application.}
  spec.homepage      = "https://github.com/Urielable/slackhook"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.5.0"
end
