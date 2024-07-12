FROM node:lts-slim

WORKDIR /home/node/app

COPY . /home/node/app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
