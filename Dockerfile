FROM node:12
#version of node

WORKDIR /usr/src/app
#source 

COPY package*.json ./
#to copy the package.json and package-lock.json

RUN npm install

COPY . .

EXPOSE 8080
#expose port 8080 to the host machine does not map or open it

CMD [ "node", "server.js"]
#node  + the entry file

