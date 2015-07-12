KeySender
======

Simple Ruby Gem to send keys to the OS

Currently only supports Mac OS X and Linux. Also, not secure in any way

Usage
======

The send_text(text) method will automatically detect the OS and call the appropriate function to send the keys.

    require 'keysender'

    KeySender.send_text('Hello World')


If for some reason the OS detection won't work for you, you can call the OS-specific functions directly.

    require 'keysender'

    KeySender.send_windows('Hello Windows')
    KeySender.send_mac('Hello Mac OS X')
    KeySender.send_linux('Hello Linux')