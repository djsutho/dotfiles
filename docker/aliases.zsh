alias d='docker $*'
alias d-c='docker-compose $*'
alias docker_last_built="docker images --format '{{.ID}} {{.CreatedAt}} {{.Repository}} {{.Tag}}' | sort -rk 2 | awk 'NR==1{print \$1}'"
