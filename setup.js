var sys = require('sys')
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { /*sys.puts(stdout)*/ }

//remove any existing dotfiles
exec('rm ~/.bash_profile', puts);
exec('rm ~/.vimrc', puts);
exec('rm ~/.gitignore', puts);

//create dotfile symlinks
exec('ln -s "$PWD/.bash_profile" ~/.bash_profile', puts);
exec('ln -s "$PWD/.vimrc" ~/.vimrc', puts);
exec('ln -s "$PWD/.gitignore" ~/.gitignore', puts);
