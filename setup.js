var sys = require('sys');
var exec = require('child_process').exec;
function puts(error, stdout, stderr) {
  if(error) {
    sys.puts(error.toString().trim());
  }
}

var dotfiles = [
  '.bash_profile',
  '.spacemacs',
  '.editorconfig',
  '.vimrc',
  '.nvimrc',
  '.zshrc',
  '.gitconfig',
  '.gitignore_global'
];

for (var index in dotfiles) {
  //remove existing dotfile
  exec('rm -f ~/' + dotfiles[index], puts);

  //create dotfile symlink
  exec('ln -s "$PWD/' + dotfiles[index] + '" ~/' + dotfiles[index], puts);
}
