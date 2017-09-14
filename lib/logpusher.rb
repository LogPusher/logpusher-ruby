$LOAD_PATH << File.dirname(__FILE__)

require "logpusher/version"
require "logpusher/constants"
require "logpusher/authkey"
require "logpusher/email"
require "net/http"
require "uri"

module LogPusher
  class Client
    def initialize(email, password, api_key)
      @auth_key = AuthKey.new(Email.new(email), password)
      @api_key = api_key
    end

    def push(
             log_message = "", source = "", category = "", log_type = "", log_time = "",
             created_date = Time.now, event_id = "") 
      response = Net::HTTP.post_form URI(API_URL), {
        "AuthKey"     => @auth_key.get_auth_key,
        "ApiKey"      => @api_key,
        "LogMessage"  => log_message,
        "Source"      => source,
        "Category"    => category,
        "LogType"     => log_type,
        "LogTime"     => log_time,
        "CreatedDate" => created_date.strftime(DATE_FORMAT),
        "EventId"     => event_id
      }
      response
    end
  end
end
