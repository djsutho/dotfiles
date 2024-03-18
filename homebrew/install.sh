#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# exit 0

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# quick exit when no updates TODO find a wat to detect this.
# exit 0

echo "installing brew items"

sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew tap buo/cask-upgrade
brew tap ktr0731/evans
# brew tap davide4hire/teleport
brew tap homebrew/cask-drivers
brew tap homebrew/cask-versions

brew install \
  coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep \
  pyenv \
  pipenv \
  pipx \
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
  scc \
  evans \
  detekt \
  helm \
  protobuf \
  prototool \
  yarn \
  tfenv \
  rbenv/tap/openssl@1.0 \
  nss \
  librsvg \
  eddieantonio/eddieantonio/imgcat \
  qemu \
  saml2aws \
  openldap \
  gh \
  redis \
  wget \
  egctl
  # logitech-options
  # teleport@7.3 \

brew install --cask \
  opera \
  brave-browser \
  microsoft-edge \
  iterm2 \
  rectangle \
  perforce \
  p4v \
  sublime-text \
  docker \
  insomnia \
  postman \
  vlc \
  disk-inventory-x \
  grandperspective \
  omnidisksweeper \
  meld \
  bloomrpc \
  wombat \
  milkman \
  mysqlworkbench \
  swiftdefaultappsprefpane \
  miniconda \
  robo-3t \
  clocker \
  stats \
  session-manager-plugin \
  alt-tab \
  julia \
  obsidian \
  github \
  firefox-developer-edition \
  visual-studio-code \
  intellij-idea \
  openlens
  # virtualbox \
  # chromium \

# insecure developer?
brew install --cask --no-quarantine middleclick

brew cu -y

# Remove outdated versions from the cellar.
brew cleanup

# MariaDB4j bug https://github.com/vorburger/MariaDB4j/issues/48#issuecomment-694015997
ln -sfn /usr/local/Cellar/openssl@1.0/1.0.2t /usr/local/opt/openssl

# might need rehashing
eval "$(pyenv init -)"

exit 0
