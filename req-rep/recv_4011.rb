require 'rubygems'
require 'zmq'

z = ZMQ::Context.new
s = z.socket(ZMQ::REP)
s.bind "tcp://127.0.0.1:4011"

loop do
  puts s.recv
  s.send("got it")
end
