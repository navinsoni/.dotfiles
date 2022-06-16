# Installations

## Installations required for setting up configs

### Install stow

- `wget https://ftp.gnu.org/gnu/stow/stow-latest.tar.gz && tar -xf stow-latest.tar.gz && cd `ls stow-_ -d | grep -v gz` && ./configure && make && sudo make install && cd .. && rm -rf stow-_`

#### Instructions to install configs

- `cd ~`
- `git clone https://github.com/navinsoni/.dotfiles`
- `cd ~/.dotfiles`
- Install required configs (e.g. `stow install nvim`)

Note: In case you are using git, update `git/.gitconfig` with your `email` and `name`

## Installations required for Neovim[nvim]

### Install packer

- Follow installation instructions at "https://github.com/wbthomason/packer.nvim"

### Install nvm, node

- `curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash`
- `nvm install --lts`

### Install efm-languageserver

- Install Go; (e.g.: `yum install go`)
- Install efm-languageserver; `go install github.com/mattn/efm-langserver@latest`
- Add it's PATH in shell file; (e.g. "export PATH=$HOME/go/bin:$PATH")

### Install Language specific servers

- npm install -g black typescript-language-server pyright flake8 mypy prettier eslint golint misspell shellcheck vint terraform markdownlint-cli
