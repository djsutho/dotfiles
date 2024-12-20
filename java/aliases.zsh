alias mvnkd='mvn antrun:run@ktlint antrun:run@detekt -nsu'

alias mvnq='mvn -T 2C \
  -Dmaven.test.skip=true \
  -DskipTests \
  -Dfindbugs.skip=true \
  -Dpmd.skip=true \
  -Dcheckstyle.skip \
  -Dspotbugs.skip=true \
  -DskipITs \
  -Dmaven.javadoc.skip=true \
  -Djacoco.skip=true \
  -Dmaven.antrun.skip=true \
  -Dmaven.gitcommitid.skip=true \
  -Denforcer.skip=true \
  --no-snapshot-updates'
alias mvnqp='mvnq package'
alias mvnqi='mvnq install'
alias mvnqc='mvnq clean'
alias mvnqci='mvnq clean install'
alias mvnqsb='mvnq spring-boot:run'


use_java() {
  # sdk use java `sdk list java | grep -e installed -e local | cut -f 6 -d "|" | grep -e "^\s*$1" | head -1`
  sdk use java `ls $SDKMAN_CANDIDATES_DIR/java | grep -v current | sort -r | grep -e "^$1\." | head -1`
}

sdk_use() {
  sdk use $1 `ls $SDKMAN_CANDIDATES_DIR/$1 | grep -v current | sort -r | grep -e "^$2" | head -1`
}
