FROM node AS Build

LABEL maintainer = jawad, <jawadahmedsecd1@gmail.com>

WORKDIR /home/node/bingo-letter-game

COPY --chown=node:node package.json package-lock.json ./

RUN npm install

COPY ./ ./ 

RUN npm run build

FROM node:alpine

USER node

EXPOSE 8080

WORKDIR /home/node/build