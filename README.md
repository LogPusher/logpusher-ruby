# LogPusher: Log tracking for Ruby

[![Build Status](https://travis-ci.org/LogPusher/logpusher-ruby.svg?branch=master)](https://travis-ci.org/LogPusher/logpusher-ruby)

LogPusher is a system that allows you to receive notifications through your mobile on a single application. Apart from push notifications, you can also receive information without a mobile client via SMS and Mail service. You can integrate with any software through the API. Thanks to rapid API integration, you do not spend extra time for information and mail service. 

LogPusher is easy to use on the client side thanks to its simple interface. Just generate API key trough our control panel and you are ready to go.

## Getting started

1. [Create a LogPusher account](http://logpusher.com/)
2. Create a new App and get API Token

## Installation

```
gem install logpusher
```

## Usage

```ruby
require "logpusher"

client = LogPusher::Client.new("hello@logpusher.com", "PASSWORD", "API_KEY")

response = client.push(
  "My awesome log message", 
  "myawesomesite.com", 
  "E-commerce", 
  "Notice", 
  Time.now.strftime("%H:%M"), 
  Time.now, 
  "1"
)

puts response.body
```

## Support

* [Search open and closed issues](https://github.com/LogPusher/logpusher-ruby/issues?utf8=✓&q=is%3Aissue) for similar problems
* [Report a bug or request a feature](https://github.com/LogPusher/logpusher-ruby/issues/new)

## Contributing

1. Fork it ( https://github.com/LogPusher/logpusher-ruby/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [izniburak](https://github.com/izniburak) İzni Burak Demirtaş - creator
