FROM node:16-alpine

WORKDIR /src

ADD . ./src

RUN npm i --production

EXPOSE 8055

CMD ["npm", "start"]
