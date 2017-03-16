--local tableFunc = class("tableFunc")

local ta1 = function()
			print("ta_func1")
			end
local ta2 = function()
			print("ta_func2")
			end
local tb1 = function()
			print("tb_func1")
			end
local tb2 = function()
			print("tb_func2")
			end


local tblFunc = {
	ta = {ta1,ta2},
	tb = {
			tb1
			,tb2
	}
}


function typeofstatus( status )
	print("type " .. tostring(status))
 	if(status == 0) then
 		for k,v in pairs(tblFunc.ta) do
 			v()
 		end
 	end

 end 

typeofstatus(1)

--return tableFunc