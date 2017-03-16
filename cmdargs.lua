--cmdargs.lua
local count = select("#", ... )
if count > 0 then
	print("Cmd line arguments")

	for I = 1, count do
		print(I, (select(I, ...)))
	end
else
	print("no cmd line arg")
end
