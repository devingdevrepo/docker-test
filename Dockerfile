FROM node:20-alpine AS builder 
WORKDIR /app 
COPY package*.json ./ 
RUN npm i 
COPY . . 
EXPOSE 5000 








