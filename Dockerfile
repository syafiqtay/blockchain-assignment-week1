FROM node:14-slim

WORKDIR /usr/src/app

COPY ./package.json ./

# COPY ./package-lock.json ./

EXPOSE 9944

RUN  npm install 

COPY . .

CMD ["npm", "start"]

RUN  apt-get update && apt-get install iputils-ping dnsutils -y
