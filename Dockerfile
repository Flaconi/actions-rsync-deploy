FROM debian:stable-slim

RUN apt update
RUN apt -yq install rsync openssh-client


# Label
LABEL "com.github.actions.name"="rsync-deploy"
LABEL "com.github.actions.description"="GitHub Action used to deploy files using rsync"

LABEL "repository"="https://github.com/Flaconi/actions-rsync-deploy"
LABEL "maintainer"="Flaconi DevOps"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]