FROM node:20-alpine
WORKDIR /frontend/src/app

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm" ,"start" ]