echo "sudo python commands"
# sudo -H python -m ensurepip
# sudo -H pip install --upgrade pip
# sudo -H pip install virtualenvwrapper
echo "sudo done"

# trying this https://stackoverflow.com/a/51373253/2727476
rm /usr/local/bin/pip3

pyenv install `pyenv latest 3`
pyenv global `pyenv latest 3`

pipx ensurepath

pipx install cve-bin-tool
pipx install yq
# pipx install sshuttle==0.78.5
pipx install sshuttle
pipx install ipython
pipx install poetry
pipx install tox

pip install requests ipdb virtualenv virtualenvwrapper

exit 0
