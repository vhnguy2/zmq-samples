require "rubygems"
require "zmq"

queue_location = "tcp://127.0.0.1:8000"

z = ZMQ::Context.new
s = z.socket(ZMQ::REQ)
s.connect queue_location

c = 0
loop do
  s.send(c.to_s)
  s.recv()
  c = c+1
end
