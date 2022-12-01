FROM node:14-alpine as build-stage

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 3002

CMD yarn start