require "base64"
require "digest"

module LogPusher
  class AuthKey
    @email = nil
    @hashed_password = nil

    def initialize(email, password)
      raise "The type of email parameter must consist of the Email object." unless email.is_a?(Email)
      @email = email.get
      @hashed_password = Digest::MD5.hexdigest password
    end

    def get_auth_key
      auth_key = create_auth_key_string
      Base64.strict_encode64 auth_key
    end

    private
    
    def create_auth_key_string
      "#{@email}#{SEPERATOR}#{@hashed_password}#{SEPERATOR}#{Time.now.strftime(DATE_FORMAT)}"
    end
  end
end
