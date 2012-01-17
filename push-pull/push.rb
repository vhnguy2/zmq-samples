require "zmq"

ctx = ZMQ::Context.new
pusher = ctx.socket(ZMQ::PUSH)
pusher.bind("tcp://127.0.0.1:8000")

loop do
  pusher.send("Hi.")
  sleep 1
end
