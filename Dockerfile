FROM node:16

# Define a workign directory inside the container
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY .  .

EXPOSE 8084

CMD ["node","server.js"]

