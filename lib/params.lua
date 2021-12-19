---class for store settings params provided by user
Params = {}
Params.__index = Params
Params.settings = {
	['compression']=nil,
	['grayscale']=nil,
}
Params.grayscale_modes = {
	'luminance',
	'lightness',
	'average',
	'value'
}

function Params:init()
	local params = {}
	setmetatable(params, Params)
	params.settings = Params.settings
	params.grayscale_modes = Params.grayscale_modes
	return params
end

function error_msg(msg, param)
	print("[WARN]:".."("..param..") "..msg)
end

function info_msg(param, value)
	local strVal
	if not value then strVal = 'default' else strVal = tostring(value) end
	print("[INFO]:".."("..param..")".." set "..'`'..strVal..'`')
end

function Params:set_compression (compression)
	local value = nil
	if compression >= 1.0 or compression < 0.0 then error_msg("invalid value", 'compression')
	else value = compression 
	end
	self.settings.compression = compression
	info_msg('compression', value)
end

function Params:set_grayscale(grayscale)
	local value = 'average'
	if grayscale <= 1 or grayscale >= 4 then error_msg("invalid value", 'grayscale')
	else value = self.grayscale_modes[grayscale]
	end
	self.settings.grayscale = grayscale
	info_msg('grayscale', value)
end

