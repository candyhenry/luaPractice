--JSON Parser
require("json")

function JsonParserTest( )
	local jsonContent = json.encode({})
	print(type(jsonContent))
	print(jsonContent)
end

JsonParserTest()