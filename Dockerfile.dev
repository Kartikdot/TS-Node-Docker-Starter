FROM node:16-alpine
WORKDIR /usr/local/apps/myapp

COPY package.json ./
RUN npm install && npm cache clean --force
ENV PATH=/usr/local/myapp/node_modules/.bin:$PATH

WORKDIR /usr/local/apps/myapp/dev
COPY tsconfig.json ./

COPY src ./src
COPY .env ./

EXPOSE ${PORT}

CMD ["npm", "run", "start:dev"]