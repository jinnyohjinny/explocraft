FROM node:19.5.0-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV EXPLOIT_SERVER_KEY=explocraft

CMD [ "npm", "start" ]
