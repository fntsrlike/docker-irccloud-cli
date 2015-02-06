FROM node:latest
MAINTAINER Ruoshi Ling <fntsrlike@gmail.com>

RUN apt-get update && apt-get install -y libicu-dev
RUN npm install -g irccloud-cli

COPY ./config.json /app/config.json

CMD ["ic", "-P", "/app"]
