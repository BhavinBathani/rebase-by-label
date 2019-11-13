FROM alpine:latest

LABEL "com.github.actions.name"="Auto Rebase"
LABEL "com.github.actions.description"="Automatically rebases PR when user choose AutoRebase label"
LABEL "com.github.actions.color"="pink"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL maintainer="BhavinBathani"

RUN apk --no-cache add jq bash curl git git-lfs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
