# golang
# export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/work
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# haskell
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/.stackage/sandboxes/ghc-7.8.3/lts-2.8/bin:$PATH
export PATH=$HOME/.stackage/sandboxes/ghc-7.8.3/lts-2.9/bin:$PATH
export PATH=$HOME/.stackage/sandboxes/ghc-7.8.3/lts-2.10/bin:$PATH
export PATH=$HOME/.stackage/sandboxes/ghc-7.8.3/lts-2.13/bin:$PATH

# boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tattsun/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# android sdk
export PATH=$HOME/Applications/android-sdk-macosx/tools:$PATH

# postgres
export PGDATA=/usr/local/var/postgres
