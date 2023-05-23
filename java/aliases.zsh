alias mvnkd='mvn antrun:run@ktlint antrun:run@detekt -nsu'
alias mvnqci='mvn -T 2C clean install \
  -Dmaven.test.skip=true \
  -DskipTests \
  -Dfindbugs.skip=true \
  -Dpmd.skip=true \
  -Dcheckstyle.skip \
  -Dspotbugs.skip=true \
  -DskipITs \
  -Dmaven.javadoc.skip=true \
  --no-snapshot-updates'
alias mvnqi='mvn -T 2C install \
  -Dmaven.test.skip=true \
  -DskipTests \
  -Dfindbugs.skip=true \
  -Dpmd.skip=true \
  -Dcheckstyle.skip \
  -Dspotbugs.skip=true \
  -DskipITs \
  -Dmaven.javadoc.skip=true \
  --no-snapshot-updates'
alias mvnqsb='mvn -T 2C spring-boot:run \
  -Dmaven.test.skip=true \
  -DskipTests \
  -Dfindbugs.skip=true \
  -Dpmd.skip=true \
  -Dcheckstyle.skip \
  -Dspotbugs.skip=true \
  -DskipITs \
  -Dmaven.javadoc.skip=true \
  --no-snapshot-updates'
