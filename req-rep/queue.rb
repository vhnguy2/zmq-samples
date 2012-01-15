require "ffi-rzmq"

ctx = ZMQ::Context.new

frontend = ctx.socket(ZMQ::ROUTER)
frontend.bind("tcp://127.0.0.1:8000")

backend = ctx.socket(ZMQ::DEALER)
backend.connect("tcp://127.0.0.1:4010")
backend.connect("tcp://127.0.0.1:4011")

ZMQ::Device.new(ZMQ::QUEUE, frontend, backend)
