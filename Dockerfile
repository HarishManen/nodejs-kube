FROM node:alpine

RUN mkdir -p /usr/src/app

RUN mkdir -p /usr/src/app/public

WORKDIR /usr/src/app

ADD ex.js ./

ADD index.html ./

ADD public/zippy.png ./public/

ADD package.json ./


RUN npm install express --save

CMD ["npm", "start"]

 