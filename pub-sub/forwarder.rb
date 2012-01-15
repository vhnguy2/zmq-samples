require "ffi-rzmq"

ctx = ZMQ::Context.new
frontend = ctx.socket(ZMQ::SUB)
frontend.connect("tcp://127.0.0.1:8000")
frontend.setsockopt(ZMQ::SUBSCRIBE, "")

backend = ctx.socket(ZMQ::PUB)
backend.bind("tcp://127.0.0.1:8001")
ZMQ::Device.new(ZMQ::FORWARDER, frontend, backend)
