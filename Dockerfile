FROM node:16-alpine
WORKDIR /usr/local/apps/myapp/dev

COPY package.json ./
RUN npm install && npm cache clean --force

COPY tsconfig.json ./

COPY src ./src
COPY .env ./

EXPOSE ${PORT}

CMD ["npm", "run", "start:dev"]