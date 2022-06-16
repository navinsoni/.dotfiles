# Installations

## Installations required for setting up configs

### Install stow

- Follow instructions at "https://linuxconfig.org/how-to-use-gnu-stow-to-manage-programs-installed-from-source-and-dotfiles"

## Installations required for Neovim[nvim]

### Install packer

- Follow installation instructions at "https://github.com/wbthomason/packer.nvim"

### Install nvm, node

- `curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash`
- `nvm install node`

### Install efm-languageserver

- Install Go; (e.g.: `yum install go`)
- Install efm-languageserver; `go install github.com/mattn/efm-langserver@latest`
- Add it's PATH in shell file; (e.g. "export PATH=$HOME/go/bin:$PATH")

### Install Language specific servers

- npm install -g black pyright flake8 mypy prettier eslint golint misspell shellcheck vint terraform markdownlint-cli
