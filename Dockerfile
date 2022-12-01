FROM node:14-alpine as build-stage

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn

COPY . .

EXPOSE 3002

CMD yarn start