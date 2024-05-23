FROM node:16-alpine

WORKDIR /src

ADD . ./src

RUN npm i --omit=dev

EXPOSE 8055

CMD ["npm", "start"]
