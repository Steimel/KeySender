require 'keysender'

print 'Enter the key(s) to send: '
text = gets.chomp

print 'Enter the loop time in milliseconds: '
ms = gets.chomp.to_i

print 'Enter number of times to loop (0 for forever): '
times = gets.chomp.to_i

forever = (times == 0)

print 'Looping keys... (ctrl-C to cancel)'
while forever || times > 0
  KeySender.send_text(text)
  sleep(ms.to_f / 1000.0)
  times -= 1
end
puts 'Done!'