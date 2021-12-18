# lua-braille

### First step
clone repo
```bash
git clone git@github.com:Splinter1984/lua-braille.git
cd lua-braille/
```
install ```vsctools```
```bash
sudo apt install python3-vcstool
```
clone dependent repositories into the project with vcs
```bash
vcs import . < lua-braille.repos
```
### Run script
you can provide pic in .png format as argument
```bash
lua init.lua <path_to_pic>.png
```
### Example
<div align="center">
  
|*.png | braille sym |
|---   |---          |
| ![](https://github.com/Splinter1984/lua-braille/blob/master/pic/pic1.png)|⠄⣴⠏⣰⣿⣿⣿⣿⠋⣤⣾⣿⣿⣿⡟⢠⣾⡿⣫⠵⠚⣛⣿⠷⠄⠄⠄⠄⠄⠄⠄<br>⢸⡟⢠⣿⣿⣿⣿⡇⢸⣿⣿⠿⠟⣫⠄⣿⡥⠞⢁⣴⠞⣉⣤⣶⣤⡄⠄⠄⠄⠄⠄<br>⢰⡅⢸⣯⣭⣭⣭⡅⢸⣷⣶⡾⠟⠋⠄⢿⣤⣶⡟⢡⣾⣿⠟⠛⢛⣷⠄⠄⠄⠄⠄<br>⠄⠉⠄⢻⣍⠉⠉⠁⠈⢿⣄⣠⣴⠾⠓⡀⠭⣭⣄⢿⡟⣡⡶⠟⠛⠛⠄⠄⠄⠄⠄<br>⠄⠄⠑⢠⣝⢛⣛⣛⣓⣀⣭⣥⣤⡺⣿⣿⡀⢻⣿⢸⠟⢁⣤⣶⣿⣤⠄⠄⠄⠄⠄<br>⠄⠄⠄⢸⡇⣿⣿⣿⣿⣿⣿⣿⣿⣷⢹⣿⡇⠈⢿⡎⢰⣿⡿⠋⢉⣹⠄⠄⠄⠄⠄<br>⠄⠄⠄⢸⣧⢻⣿⣿⣿⣿⣿⣿⣛⡵⠿⢿⣇⡀⠘⢿⣷⡝⣧⠴⣻⣭⣄⠄⠄⠄⠄<br>⠄⠄⠄⠸⠛⠳⢽⣿⣿⣟⠛⢉⣠⣤⣶⣶⣮⣽⡆⠄⠙⣿⡈⡄⡟⢩⣽⡆⠄⠄⠄<br>⠄⠄⠄⠄⢶⡏⣥⣌⠻⣿⣿⣿⡟⣭⣭⣍⣙⣿⣿⠄⠄⢹⡇⡇⣼⢆⣿⠁⠄⠄⠄<br>⠄⠄⠄⠄⠸⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢸⡇⡇⣩⣾⠃⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⢻⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠄⠄⣸⢰⠄⣿⠁⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠈⢿⣿⢹⣿⣿⣿⡝⣿⣿⣿⣿⣿⠇⠄⣰⢇⡎⢠⢻⠄⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠄⠘⣿⣶⣭⣉⣱⣶⣿⣿⣿⣿⡟⠄⢠⡟⢜⣵⢏⣾⡄⠄⠄⠄⠄⠄<br>⠄⠄⠄⠄⠄⠄⠄⠹⣿⣛⣿⣿⣛⣛⣻⣿⡿⠄⢠⣞⣴⠟⢡⣾⣿⣿⣦⣄⡀⠄⠄<br>⠄⠄⠄⠄⠄⠄⠄⣠⡹⣿⡟⠛⢛⣿⣿⣿⠁⣠⣿⠟⠁⢠⡿⣿⣿⣿⣿⣿⣿⣷⣶<br>|

</div>
