--anonymous function
require "luaLog"

local f = function ( A,B )
	-- body
	luaLog(A + B)
end
f(2, 5)