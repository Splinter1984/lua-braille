# lua-braille
![](https://img.shields.io/badge/lua-v5.3-blue)
![](https://img.shields.io/badge/made%20by-splinter1984-blue)	
### First step
clone repo
```bash
git clone git@github.com:Splinter1984/lua-braille.git
cd lua-braille/
```
clone submodule
```bash
git submodule init && git submodule update
```
### Run script
script can be run with some options
```bash
lua lua-braille.lua ?
script help to convert *.png image into braille unicode table
usage:
	lua lua-braile.lua <img_path> <grayscale_mode_index> <compression>
	<img_path> - path to image in .png format
	<compression> - parameter from 0.0 to 0.99 of image size compression
	<grayscale_mode_index> {'luminance', 'lightness', 'average', 'value'}
```
you can provide only pic in .png format as argument
```bash
lua lua-braille.lua <path_to_pic>.png
```
### Example
<div align="center">
  
|*.png | braille sym |
|---   |---          |
| ![](https://github.com/Splinter1984/lua-braille/blob/master/pic/pic1.png)|⠄⣴⠏⣰⣿⣿⣿⣿⠋⣤⣾⣿⣿⣿⡟⢠⣾⡿⣫⠵⠚⣛⣿⠷⠄⠄⠄⠄⠄⠄⠄<br>⢸⡟⢠⣿⣿⣿⣿⡇⢸⣿⣿⠿⠟⣫⠄⣿⡥⠞⢁⣴⠞⣉⣤⣶⣤⡄⠄⠄⠄⠄⠄<br>⢰⡅⢸⣯⣭⣭⣭⡅⢸⣷⣶⡾⠟⠋⠄⢿⣤⣶⡟⢡⣾⣿⠟⠛⢛⣷⠄⠄⠄⠄⠄<br>⠄⠉⠄⢻⣍⠉⠉⠁⠈⢿⣄⣠⣴⠾⠓⡀⠭⣭⣄⢿⡟⣡⡶⠟⠛⠛⠄⠄⠄⠄⠄<br>⠄⠄⠑⢠⣝⢛⣛⣛⣓⣀⣭⣥⣤⡺⣿⣿⡀⢻⣿⢸⠟⢁⣤⣶⣿⣤⠄⠄⠄⠄⠄<br>⠄⠄⠄⢸⡇⣿⣿⣿⣿⣿⣿⣿⣿⣷⢹⣿⡇⠈⢿⡎⢰⣿⡿⠋⢉⣹⠄⠄⠄⠄⠄<br>⠄⠄⠄⢸⣧⢻⣿⣿⣿⣿⣿⣿⣛⡵⠿⢿⣇⡀⠘⢿⣷⡝⣧⠴⣻⣭⣄⠄⠄⠄⠄<br>⠄⠄⠄⠸⠛⠳⢽⣿⣿⣟⠛⢉⣠⣤⣶⣶⣮⣽⡆⠄⠙⣿⡈⡄⡟⢩⣽⡆⠄⠄⠄<br>⠄⠄⠄⠄⢶⡏⣥⣌⠻⣿⣿⣿⡟⣭⣭⣍⣙⣿⣿⠄⠄⢹⡇⡇⣼⢆⣿⠁⠄⠄⠄<br>⠄⠄⠄⠄⠸⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢸⡇⡇⣩⣾⠃⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⢻⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠄⠄⣸⢰⠄⣿⠁⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠈⢿⣿⢹⣿⣿⣿⡝⣿⣿⣿⣿⣿⠇⠄⣰⢇⡎⢠⢻⠄⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠄⠘⣿⣶⣭⣉⣱⣶⣿⣿⣿⣿⡟⠄⢠⡟⢜⣵⢏⣾⡄⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠄⠄⠹⣿⣛⣿⣿⣛⣛⣻⣿⡿⠄⢠⣞⣴⠟⢡⣾⣿⣿⣦⣄⡀⠄⠄<br>⠄⠄⠄⠄⠄⠄⠄⣠⡹⣿⡟⠛⢛⣿⣿⣿⠁⣠⣿⠟⠁⢠⡿⣿⣿⣿⣿⣿⣿⣷⣶<br>|

</div>
