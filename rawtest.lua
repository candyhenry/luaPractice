--raw test

function getTblValueAtIndex( tbl , index)
	-- body
	local isNil = next(tbl)
	if not isNil then
		return nil
	end

	return rawget(tbl, index)
end


local tbl = {"a", "b", "c"}
print(getTblValueAtIndex(tbl, 3) )


