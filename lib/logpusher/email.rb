module LogPusher
  class Email
    @email = nil

    def initialize(email)
      ensure_is_valid_email(email)
      @email = email
    end

    def get
      @email
    end

    private 
    
    def ensure_is_valid_email(email)
      control = email.match(/^[_]*([a-z0-9]+(\.|_*)?)+@([a-z][a-z0-9-]+(\.|-*\.))+[a-z]{2,6}$/)
      raise "#{email} is not a valid email address." if control.nil?
      true
    end
  end
end
