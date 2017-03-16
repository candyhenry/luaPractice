local tblArray = {}
local tableA = {"刘海峰", "8097", "213140"}
local tableB = {"徐筝", "8190", "213089"}
 
 tblArray["lhf"] = tableA
 tblArray["wwt"] =  tableB

local function getNumber( name )
	return tblArray[name]
end

local function printTable( tbl )
	for _,v in pairs(tbl) do
		print(v)
	end
end


io.write("give a name \n")
local name = io.read()
--print(name)
local tbl = getNumber(name)
---[[
for _,v in pairs(tbl) do
	print(v)
end
--]]