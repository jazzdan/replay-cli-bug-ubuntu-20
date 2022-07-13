VERSION 0.6
FROM earthly/dind:alpine

image:
  FROM ubuntu:20.04
  RUN apt-get update && apt-get install -y curl
  RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
  RUN apt-get install -y nodejs
  RUN npm i @replayio/node ts-node --global
  ENV RECORD_REPLAY_API_KEY
  COPY sample.ts sample.js script.sh .
  CMD ["/bin/bash", "script.sh"]
  SAVE IMAGE replay-cli-bug

run:
  ARG RECORD_REPLAY_API_KEY
  WITH DOCKER --load replay-cli-bug:latest=+image
    RUN docker run -e RECORD_REPLAY_API_KEY=$RECORD_REPLAY_API_KEY replay-cli-bug
  END

