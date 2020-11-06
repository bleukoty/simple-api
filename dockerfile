FROM node:12.19.0-alpine3.10

WORKDIR /usr/app/src

COPY package*.json ./
COPY deploy.yaml ./

RUN npm install 
RUN npm install -g pm2

COPY ./src ./

ENTRYPOINT ["pm2-runtime"]
CMD ["deploy.yaml"]