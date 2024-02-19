FROM node:14 AS builder

WORKDIR /app

COPY ./angular-app/package*.json ./

RUN npm install

COPY ./angular-app .

RUN npm run build --prod

FROM node:14

WORKDIR /app

COPY --from=builder /app/dist/angular-app .

EXPOSE 4200

CMD ["npm", "start"]