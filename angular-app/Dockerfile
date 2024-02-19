FROM node:14 AS builder

WORKDIR /usr/src/app

COPY . /usr/src/app/

RUN npm install -g @angular/cli

RUN npm install

EXPOSE 4200

CMD ["npm", "start"]
