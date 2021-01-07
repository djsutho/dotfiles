#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

# quick exit when no updates TODO find a wat to detect this.
# exit 0

echo "installing brew items"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew tap buo/cask-upgrade
brew tap ktr0731/evans

brew install \
  coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep \
  pyenv \
  pipenv \
  tree \
  vault \
  jq \
  git \
  awscli \
  dive \
  pygments \
  kafka \
  telnet \
  aws-iam-authenticator \
  avro-tools \
  watch \
  pipx \
  scc \
  evans \
  rbenv/tap/openssl@1.0

brew install --cask \
  chromium \
  iterm2 \
  rectangle \
  perforce \
  p4v \
  opera \
  sublime-text \
  docker \
  insomnia \
  postman \
  virtualbox \
  vlc \
  disk-inventory-x \
  brave-browser \
  meld \
  bloomrpc \
  lens \
  mysqlworkbench

brew cu -y

# Remove outdated versions from the cellar.
brew cleanup

# MariaDB4j bug https://github.com/vorburger/MariaDB4j/issues/48#issuecomment-694015997
ln -sfn /usr/local/Cellar/openssl@1.0/1.0.2t /usr/local/opt/openssl

# might need rehashing
eval "$(pyenv init -)"

exit 0
