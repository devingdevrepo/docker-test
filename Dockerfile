FROM node:20-apline AS builder

WORKDIR /app

COPY package.json ./

RUN npm i  

COPY . . 

EXPOSE 5000

CMD ["node" , "server.js"]

