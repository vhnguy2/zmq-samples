#! /usr/bin/env ruby
require 'zmq'
context = ZMQ::Context.new
publisher = context.socket ZMQ::PUB
publisher.bind "tcp://127.0.0.1:4010"
while true
  publisher.send "Hi."
  sleep 1
end
publisher.close
