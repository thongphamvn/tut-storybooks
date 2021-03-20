FROM node:14-slim

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock  ./


RUN yarn --silent --ignore-scripts --prod --frozen-lockfile

COPY . .

USER node

EXPOSE 3000

CMD ["yarn", "run", "start"]