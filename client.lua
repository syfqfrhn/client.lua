socket = require('socket')
io.write("Connect to host : ")
server = io.read()
io.write("Connect to port : ")
port = io.read()
client = socket.connect(server,port)
if client then
	io.write("Connection success!\n")
	while true do
	io.write("Msg to server : ")
	client:send(io.read().."\n")
	reply = client:receive()
	io.write("Msg from server : " ..reply.."\n")
end
client:close()

