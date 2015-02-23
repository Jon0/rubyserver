require 'socket'

s = TCPSocket.new 'localhost', 2000

while line = s.gets # Read lines from socket
	s.puts line
	puts line
end

s.close