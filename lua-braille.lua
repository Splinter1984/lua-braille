local pngLua_folder = "pngLua/"
package.path = pngLua_folder .. "?.lua;" .. package.path

require 'lib.braille'
require 'lib.params'

function outputBraille(lines)
	for key, line in pairs(lines) do
		print(line)
	end
end

if arg[1] == '?' or arg[1] == '-h' or arg[1] == '--help' then
	print(arg[0])
	print("script help to convert *.png image into braille unicode table")
	print("usage:")
	print("	lua lua-braile.lua <img_path> <grayscale_mode_index> <compression>")
	print("	<img_path> - path to image in .png format")
	print("	<compression> - parameter from 0.0 to 0.99 of image size compression")
	print("	<grayscale_mode_index> {'luminance', 'lightness', 'average', 'value'}")
else
	local img_path, grayscale_mode, compression_val = arg[1], arg[2], arg[3]
	local img = pngImage(img_path)

	local pr = Params:init()
	-- init default params
	pr:set_compression(compression_val and tonumber(compression_val) or 0.0)
	pr:set_grayscale(grayscale_mode and tonumber(grayscale_mode) or 3)

	outputBraille(canvasToTable(img, pr))
end
