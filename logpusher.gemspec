# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logpusher/version'

Gem::Specification.new do |s|
  s.name          = 'logpusher'
  s.version       = LogPusher::VERSION
  s.date          = '2017-09-15'
  s.summary       = 'LogPusher: Log tracking for Ruby'
  s.description   = 'LogPusher: Log tracking for Ruby'
  s.authors       = ['İzni Burak Demirtaş']
  s.email         = ['info@burakdemirtas.org']
  s.homepage      = 'https://github.com/LogPusher/logpusher-ruby'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec)/}) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
end
