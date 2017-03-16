
--lua fibonacci 尾递归
function tailCall(n,tb) 
	if n <= 2 then 
		tb[1]=0 
		tb[2]=1 
	return tb 
	end 
	tailCall(n-2,tb) 
	tailCall(n-1,tb) 
	tb[n] = tb[n-2] + tb[n-1] 
	return tb 
 end 

 function fibonacci(n) 
     return tailCall(n,{})
 end 

 local tb = fibonacci(6) 
 local str = "{" for _,v in ipairs(tb) do str = str .. v .. "," end str = str .. "}"
 print(str)