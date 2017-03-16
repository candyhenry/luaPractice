--ObjOriented.lua
function makePrint(...)
	local args = {...}
	local count =select("#" , ...)
	return function ( ... )
		print(unpack(args, 1, count))
	end
end

makePrint()()