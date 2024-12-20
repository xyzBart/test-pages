#!/bin/sh
DOCKER_IMAGE="jekyll/builder"

cmd=$*

if [ -z "$cmd" ]
then
  cmd="bash -l"
fi

if [ "$TOOLBOX_NETWORK_HOST" = "true" ]
then
  network="host"
else
  network="bridge"
fi

mount="-v ${HOME}:/${HOME}"
if [ "${PWD}" != "${HOME}" ]
then
  mount="${mount} -v ${PWD}:${PWD}"
fi

# if pgrep -x cntlm >/dev/null
# then
#   ip=$(ip route get 1 | sed -n 's/^.*src \([0-9.]*\) .*$/\1/p')
#   proxy="-e https_proxy=$ip:3128"
# fi

if [ -n "$SSH_AUTH_SOCK" ]
then
  ssh_mount="-v $SSH_AUTH_SOCK:/ssh-agent:ro"
fi

docker run -ti --rm \
  --net=${network} \
  -u `id -u`:`id -g` -w `pwd` -h toolbox \
  ${mount} \
  -e SSH_AUTH_SOCK=/ssh-agent \
  -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
  ${ssh_mount} \
  ${DOCKER_IMAGE} ${cmd}
