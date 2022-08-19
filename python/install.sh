sudo -H python -m ensurepip
sudo -H pip install --upgrade pip
sudo -H pip install virtualenvwrapper

pipx ensurepath

pipx install cve-bin-tool
pipx install yq
pipx install sshuttle==0.78.5

exit 0
