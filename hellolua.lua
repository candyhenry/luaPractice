
print "Hello lua world"
print "this is just for test a loop"

local X = true
local Y = nil
--print(tostring(Y and "ABC"))
--print((X and "ABC") .. (Y and "DEF" or 123))

local N = 5
local function TestN(N)
	if N < 10 then 
		print("x")
	elseif N > 0 then
		print("x")
	end
end
--TestN(N)

local function testTable( )
	local A = {}
	local B = "C"
	local C = "B"
	local D = {
	[A] = {B = C},
[B] = {[C] = B}, 
[C] = {[A] = A} }
--[[
print(D.C["B"])
--]]
for k,v in pairs(D.B) do
	print(k .. " " .. v)
end

print(tostring(D.B))
end

testTable()
