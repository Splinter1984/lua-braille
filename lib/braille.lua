local pngLua_folder = "../pngLua/"
package.path = pngLua_folder .. "?.lua;" .. package.path

require 'pngLua.png'
require 'lib.params'

--- convert pixel data into grayscale mode
--@params `pixel` struct with RGBA values
--@return value of grayscale
function toGrayscale(pixel, mode)
	if mode == 'luminance' then
		return (0.22*pixel.R) + (0.72*pixel.G) + (0.06*pixel.B)
	elseif mode == 'lightness' then
		return (math.max(pixel.R, pixel.G, pixel.B) + math.min(pixel.R, pixel.G, pixel.B)) / 2
	elseif mode == 'average' then
		return (pixel.R + pixel.G + pixel.B) / 3
	elseif mode == 'value' then
		return math.max(pixel.R, pixel.G, pixel.B)
	end
	return 0.0
end

--- build braille char from braile_info table
--@params `braile_info` table with 1 value on pixel 
--	which grayscale value was more than treshold
--@return unicode character of braille symbol
function pixelToBrailleChar(braille_info)
	local shift_values = {0, 1, 2, 6,
			      3, 4, 5, 7}
	local codepoint_offset = 0
	for key, val in pairs(braille_info) do
		codepoint_offset = codepoint_offset + (val << shift_values[key])
	end

	if codepoint_offset == 0 then codepoint_offset = 4 end

	return utf8.char(0x2800 + codepoint_offset)
end

--- create table with unicode characters from image data
--@params `canvas` pixels img table
--@return table with braille characters in string
function canvasToTable(canvas, params)
	local width = canvas.width
	local height = canvas.height
	local result = {}
	local img_x, img_y = 1, 1
	local scale_coef = math.floor(1 / (1 - params.settings.compression))
	while img_y+4*scale_coef < height do
		local str = ""
		while img_x+2*scale_coef < width do
			local braille_info = {0, 0, 0, 0,
					      0, 0, 0, 0}
			local dot_index = 1
			for x = 0, 1 do
				for y = 0, 3 do
					local pixel = canvas:getPixel(img_x + x*scale_coef,
								      img_y + y*scale_coef)
					if pixel.A >= 128 then
						local greyscale = toGrayscale(pixel, params.grayscale_modes[params.settings.grayscale])
						if greyscale >= 128 then braille_info[dot_index] = 1 end
					end
					dot_index = dot_index + 1
				end
			end
			str = str .. pixelToBrailleChar(braille_info)
			img_x = img_x + 2*scale_coef
		end
		result[#result + 1] = str
		img_y = img_y + 4*scale_coef
		img_x = 1
	end
	
	return result
end

