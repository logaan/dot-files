require 'rubygems'

require 'pp'

require 'wirble'
Wirble.init

def vim buffer_name = :default
  buffer_location = "~/.vim/irb/buffer_#{buffer_name.to_s}"
  system("vim #{buffer_location}")
  eval(`cat #{buffer_location}`)
end

