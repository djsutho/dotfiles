alias d='docker $*'
alias d-c='docker-compose $*'
alias docker_last_built="docker images --format '{{.ID}} {{.CreatedAt}} {{.Repository}} {{.Tag}}' | sort -rk 2 | awk 'NR==1{print \$1}'"
alias docker_running_image='docker ps -q | head -n1'
alias docker_running_command='docker exec -it "$(docker_running_image)"'
alias docker_clean='docker system prune --all --volumes && docker run --privileged --pid=host docker/desktop-reclaim-space -v'
