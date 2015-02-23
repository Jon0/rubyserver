require 'socket'

# testing http
server = TCPServer.new 8080 # Server bind to port 2000
loop do
	client = server.accept    # Wait for a client to connect
	request = client.gets
	if request.include? "GET"
		client.puts "Hello !"
		client.puts "Time is #{Time.now}"
		puts client.gets
	end
	client.close
end