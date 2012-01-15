require "zmq"

context = ZMQ::Context.new
subscriber = context.socket ZMQ::SUB
subscriber.connect "tcp://127.0.0.1:4010"
subscriber.setsockopt ZMQ::SUBSCRIBE,''
while true
  puts subscriber.recv
end
