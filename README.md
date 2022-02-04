# macOS Automated Setup
some useful script and configs.

## Install Software
### Prerequisites

#### mac-config files
Clone this repository at user's home dir. 
```shell

git clone git@github.com:ddok2/mac-config.git ~/.mac-config
```

#### Mac App Store
Signin to the `Mac App Store`

### Run Scripts
```shell
cd ~/.mac-config

# setting brew and install apps
./bin/1-setup-brew.sh

# setting common things (macOS, github)
./bin/2-common-settings.sh

# setting zshrc
./bin/3-shell-settings.sh

# setting dev config (Go, Node, etc)
./bin/4-dev-settings.sh
```
