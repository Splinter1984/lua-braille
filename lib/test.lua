require 'params'

local pr = Params:init()
pr:set_scale(tonumber(arg[1]))

for key, val in pairs(pr.settings) do
	print(key, val)
end
