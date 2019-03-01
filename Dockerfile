#latest alpine image of node
FROM node:alpine

#set the working directory
WORKDIR /src/app

#add can use link and tar file and copy just copy it.
ADD package*.json ./

#install dependencies
RUN npm install

#copy or add source code
ADD . ./

#this is only documentention purpose no need to expose.
EXPOSE 3000/tcp

#we can use cmd and entrypoint but use entrypoint if nobody is going to override it
ENTRYPOINT [ "node", "./server.js" ]