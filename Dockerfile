FROM node:8-alpine
WORKDIR /usr/src/app

COPY /src/package.json .
RUN npm install && npm cache clean --force

COPY /src .
RUN ./node_modules/.bin/grunt

