var sys = require('sys')
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { /*sys.puts(stdout)*/ }

var dotfiles = [
  '.bash_profile',
  '.vimrc',
  '.gitignore'
]

for (var index in dotfiles) {
  //remove existing dotfile
  exec('rm ~/' + dotfiles[index], puts);

  //create dotfile symlink
  exec('ln -s "$PWD/' + dotfiles[index] + '" ~/' + dotfiles[index], puts);
}
