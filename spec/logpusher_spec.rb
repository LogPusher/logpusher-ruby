# spec/logpusher_spec.rb
require 'spec_helper'

RSpec.describe LogPusher do
  it "valid email" do
    email = LogPusher::Email.new("hello@logpusher.com")
    expect(email.get).to eq("hello@logpusher.com")
  end

  it "generate auth key" do
    auth_key = LogPusher::AuthKey.new(
      LogPusher::Email.new("hello@logpusher.com"), "123456"
    )
    expect(auth_key.get_auth_key.is_a?(String)).to eq(true)
  end
end
