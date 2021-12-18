local pngLua_folder = "../pngLua/"
package.path = pngLua_folder .. "?.lua;" .. package.path

require 'pngLua.png'
require 'braille'

function outputBraille(lines)
	for key, line in pairs(lines) do
		print(line)
	end
end

local img_path = arg[1]
local img = pngImage(img_path)
outputBraille(canvasToTable(img))

