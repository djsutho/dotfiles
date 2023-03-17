echo "sudo python commands"
# sudo -H python -m ensurepip
# sudo -H pip install --upgrade pip
# sudo -H pip install virtualenvwrapper
echo "sudo done"

pyenv install `pyenv latest 3`
pyenv global `pyenv latest 3`

pipx ensurepath

pipx install cve-bin-tool
pipx install yq
pipx install sshuttle==0.78.5
pipx install ipython

pip install requests ipdb virtualenv virtualenvwrapper

exit 0
