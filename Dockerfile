FROM node:16.17.0

# RUN curl -sL https://sentry.io/get-cli/ | SENTRY_CLI_VERSION="2.2.0" bash

RUN  mkdir /code/ \
    && chown  -R 500:500 /code/

WORKDIR /code/

ADD --chown=500:500 ./ /code/
RUN yarn --immutable
ENV NODE_ENV=production