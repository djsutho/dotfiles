if [ ! -e ${HOME}/.ssh/config ]; then
  echo "  Setting up ssh config"
  echo "Host *
    ServerAliveInterval 240" > ${HOME}/.ssh/config
  chmod 600 ${HOME}/.ssh/config
fi