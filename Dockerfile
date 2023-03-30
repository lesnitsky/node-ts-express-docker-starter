FROM node:18-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --production && npm cache clean --force

COPY . ./
RUN npm run build

CMD [ "node", "dist/index.js" ]
