FROM node:16-alpine

RUN rm -rf ./src/node_modules && rm -rf ./src/package-lock.json

RUN npm set audit false

RUN npm cache clean --force

RUN npm i

EXPOSE 8055

CMD ["npm", "start"]
