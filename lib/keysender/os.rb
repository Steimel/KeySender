module KeySender
  class OS
    def self.get_os
      case
        when windows?
          :windows
        when mac?
          :mac
        else
          :linux
      end
    end

    def self.windows?
      (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    end

    def self.mac?
      (/darwin/ =~ RUBY_PLATFORM) != nil
    end

    def self.unix?
      !windows?
    end

    def self.linux?
      unix? and !mac?
    end
  end
end
