function receive(prod)
    local status, value = coroutine.resume(prod)
    print(status)
    print(value)
    if not status then
    	io.write("receive nothing stop \n")
    	return "end"
    end
    return value
end


function send( x )
	coroutine.yield(x)
end

function producer(  )
	return coroutine.create(function( )
		while true do
			local x = io.read()
			if string.lower(x) == "end" then
			io.write("end copied!!! producer stop !!\n")
			break
		end
		send(x)
		end
	end)
end


function filter( prod )
	return coroutine.create(function (  )
		for line =1,math.huge do
			local x = receive(prod)
			if string.lower(x) == "end" then
				break
			end
			x = string.formate("%5d%s", line,x )
			send(x)
		end
	end)
end

function consumer( prod )
	while true do
		local x = receive(prod)
		if string.lower(x) == "end" then
			io.write("game over \n")
			break
		end
		io.write(x, "\n")
	end
end

consumer(filter(producer()))