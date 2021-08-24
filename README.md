To use clone directly into home directory.

## Installing

To install into your home directory do the following

```bash
cd ~
git init
git remote add origin <remote>
git fetch
git checkout master
```

## Setup

Some of the packages require a secondary setup

### Vundle

For now you must bootstrap vundle and run install plugins the first time.

```
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then run vim and run `:PluginInstall`

### CoC Plugin

The CoC Plugin for VIM requires some special setup.  For one it requires node so 
ensure that is installed first.  You can use nvm, the built in package manager
(if new enough) or just install node/npm to ~/bin.

With node installed go to `~/config/coc/extensions` and run `npm install`


## Adding files

.gitignore will ignore everything by default so new things must be explicitly
added. This helps prevent adding things accidently.
