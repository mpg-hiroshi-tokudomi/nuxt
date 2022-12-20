FROM node:16.18.1-alpine

RUN apk update && apk add --no-cache git curl && curl -o- -L https://yarnpkg.com/install.sh | sh

RUN mkdir -p /nuxt
WORKDIR /nuxt

COPY package*.json ./
RUN yarn install
COPY . .

