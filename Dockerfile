FROM node:8.16.0-alpine
LABEL MAINTAINER=ADP

COPY . /app
WORKDIR /app

EXPOSE 8080  

RUN apk upgrade --update \
  && apk add --no-cache build-base \
  && apk add bash \
  && apk add make \
  && npm i -g redoc-cli

CMD redoc-cli bundle -o index.html /app/specs/api.yml && redoc-cli serve /app/specs/api.yml