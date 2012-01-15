#! /usr/bin/env ruby
require 'zmq'

location="tcp://127.0.0.1:8000"

context = ZMQ::Context.new
publisher = context.socket ZMQ::PUB
publisher.bind location
puts "Binding to #{location}"
while true
  publisher.send "Hi."
  sleep 1
end
publisher.close
