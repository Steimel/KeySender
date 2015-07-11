module KeySender
  def self.send_text(text)
    send_to_os(text, OS::get_os)
  end

  def self.send_to_os(text, os)
    case os
      when :windows
        send_windows(text)
      when :mac
        send_mac(text)
      when :linux
        send_linux(text)
    end
  end

  def self.send_windows(text)

  end

  def self.send_mac(text)
    system('osascript', '-e', "tell application \"System Events\" to keystroke \"#{text}\"")
  end

  def self.send_linux(text)
    # will not work unless xdotool is installed
    system('xdotool', 'type', text)
  end
end
