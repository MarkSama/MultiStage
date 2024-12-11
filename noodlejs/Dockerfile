FROM node:23.3.0-bookworm-slim

RUN npm config set proxy http://10.0.0.2:3128
RUN npm config set https-proxy http://10.0.0.2:3128

COPY ./noodlejs.js /app/noodle.js

WORKDIR /app

RUN npm install http

EXPOSE 8080

CMD ["node","./noodle.js"]