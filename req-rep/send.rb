require "rubygems"
require "zmq"

z = ZMQ::Context.new
s = z.socket(ZMQ::REQ)
s.connect("tcp://127.0.0.1:4010")
s.connect("tcp://127.0.0.1:4011")

10.times do |c|
  puts s.send(c.to_s)
  puts s.recv()
end
