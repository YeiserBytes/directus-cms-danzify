FROM node:16-alpine

WORKDIR /app

ADD . ./app

RUN npm i --production

EXPOSE 8055

CMD ["npm", "start"]
