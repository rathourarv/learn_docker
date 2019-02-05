FROM node:alpine

ADD *.json /src/app/

WORKDIR /src/app

RUN npm install

ADD . /src/app

EXPOSE 3000/tcp

CMD [ "node", "./server.js" ]