if [ ! -e ${HOME}/.sdkman ]; then
  echo "  Installing sdkman for you."
  curl -s "https://get.sdkman.io" | bash
fi

export SDKMAN_DIR="/Users/dasutherland/.sdkman"
[[ -s "/Users/dasutherland/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dasutherland/.sdkman/bin/sdkman-init.sh"


if test ! $(java -version)
then
  sdk install java
  sdk install java 11.0.16-tem
  sdk install java 8.0.345-tem
fi

if test ! $(which mvn)
then
  sdk install maven
  sdk default maven
fi

exit 0
