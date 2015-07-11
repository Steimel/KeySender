module KeySender
  def self.send_text(text)
    send_to_os(text, OS::get_os)
  end

  def self.send_to_os(text, os)
    case os
      when :mac
        send_mac(text)
    end
  end

  def self.send_mac(text)
    system('osascript', '-e', "tell application \"System Events\" to keystroke \"#{text}\"")
  end
end
