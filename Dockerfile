FROM node:15.12.0-alpine3.13

RUN apk update && apk add --no-cache git curl && curl -o- -L https://yarnpkg.com/install.sh | sh

RUN mkdir -p /nuxt
WORKDIR /nuxt

COPY package*.json ./
RUN yarn install
COPY . .

# CMD ["echo", "run", "serve"]
