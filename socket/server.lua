--server.lua
package.path = require("./luaSocket")

local socket = require("socket")

local host = "127.0.0.1"
local port = 8888

local server = assert(socket.bind(host, port, 1024))
server:settimeout(0)
local client_tag = {}
local conn_count = 0

print("SVR START" .. host .. ":" .. port)

while 1 do
	local conn = server:accpet()
	if conn then
		conn_count  = conn_count +1
		client_tab[conn_count] = conn
		print("A Client successfully connect!")
	end

	for conn_count,Client in ipairs(client_tab) do
		local recvt, sendt, status = socket.select({Client}, nil, 1)
		if #recvt > 0 then
			local receive, recive_status = Client:receive()
			if recive_status ~= "closed" then 
				if receive then 
					assert(Client:send("Client" .. conn_count .. "Send: "))
					assert(Client:send(receive .. "\n"))
					print("receive Client" .. conn_count .. ":" , receive)
				end
			else
				table.remove(client_tab, conn_count)
				Client:close()
				print("Client " .. conn_count .. "disconnected!")
			end
		end

	end
end
