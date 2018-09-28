FROM node:8.12-alpine
LABEL maintainer="Joaquin Menchaca <jmenchaca@rocketlawyer.com>"
ARG CREDS
ENV APP_ROOT /usr/src/app
ENV GOOGLE_APPLICATION_CREDENTIALS=${APP_ROOT}/${CREDS}
WORKDIR ${APP_ROOT}/
COPY package.json ${APP_ROOT}/
RUN npm install
COPY . ${APP_ROOT}/
ENTRYPOINT node index.js

