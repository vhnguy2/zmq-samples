require "zmq"

location="tcp://127.0.0.1:8001"

context = ZMQ::Context.new
subscriber = context.socket ZMQ::SUB
subscriber.connect location
puts "Connecting ot #{location}"
subscriber.setsockopt ZMQ::SUBSCRIBE,''
while true
  puts subscriber.recv
end
