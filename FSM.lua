--state machine
require "luaLog"

function Fact( N )
	local Ret
	if N == 0 then
		Ret = 1
	else
		Ret = N* Fact(N-1)
	end
	return Ret
end

function stateA()
	luaLog(" enter State A ")
	--do something
	--StateB()
	luaLog(Fact(2))
end

function StateB()
	-- do something
	luaLog(" enter State B ")
	luaLog(" state go to end")
	luaLog(Fact(3))
end


function fsm()
	-- body
	--[[
	luaLog("Enter a state")
	s = io.read()
	
	if (s == "A" or s == "a") then
		stateA()
	elseif(s == "B" or s == "b") then
		StateB()
	elseif(s == "Q" or s == "q") then
		luaLog("C U next time~~!")
		return
	else
		luaLog("Unkonw state")
	end
	--]]
	input = string.lower(io.read())
	while(input ~= "q")
		do
		luaLog("LOOP")
		if (input == "a") then
			stateA()
			elseif (input == "b") then
				StateB()
			else
				luaLog("UNKNOW STATE")
		end

		input = string.lower(io.read())
	end

	luaLog("=====HERE'S A BREAK ====")
	
end
fsm()