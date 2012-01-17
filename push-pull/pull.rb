require "zmq"

ctx = ZMQ::Context.new
puller = ctx.socket(ZMQ::PULL)
puller.connect("tcp://127.0.0.1:8000")

loop do
  puts puller.recv()
end
