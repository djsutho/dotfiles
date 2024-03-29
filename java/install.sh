if [ ! -e ${HOME}/.sdkman ]; then
  echo "  Installing sdkman for you."
  curl -s "https://get.sdkman.io" | bash
fi

export SDKMAN_DIR="/Users/dasutherland/.sdkman"
[[ -s "/Users/dasutherland/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dasutherland/.sdkman/bin/sdkman-init.sh"


if test ! $(java -version)
then
  sdk install java
  sdk install java `sdk list java | grep ' 17\..*-tem' | head -1 | cut -f 6 -d '|' | xargs`
  sdk install java `sdk list java | grep ' 11\..*-tem' | head -1 | cut -f 6 -d '|' | xargs`
  # temurin 8 seems to have disappeared
  sdk install java `sdk list java | grep ' 8\..*-amzn' | head -1 | cut -f 6 -d '|' | xargs`
fi

if test ! $(which mvn)
then
  sdk install maven
  sdk default maven `ls -l ~/.sdkman/candidates/maven | awk '/^d/ {print $9}' | sort -r | head -1`
fi

if test ! $(which kotlin)
then
  sdk install kotlin
  sdk default kotlin `ls -l ~/.sdkman/candidates/kotlin | awk '/^d/ {print $9}' | sort -r | head -1`
fi

exit 0
