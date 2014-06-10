var sys = require('sys')
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { /*sys.puts(stdout)*/ }

//create dotfile symlinks
exec('ln -s "$PWD/.bash_profile" ~/.bash_profile', puts);
exec('ln -s "$PWD/.vimrc" ~/.vimrc', puts);
exec('ln -s "$PWD/.gitignore" ~/.gitignore', puts);
