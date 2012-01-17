require "ffi-rzmq"

ctx = ZMQ::Context.new
pusher = ctx.socket(ZMQ::PUSH)
pusher.bind("tcp://127.0.0.1:8001")

loop do
  pusher.send_string("Hi.")
  sleep 1
end
