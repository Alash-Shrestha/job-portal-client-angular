FROM node:14-alpine

WORKDIR /app

COPY package.json /app/

RUN npm install -g @angular/cli@9.1.4

RUN npm install --legacy-peer-deps

RUN npm install querystring --save

COPY . /app/

CMD ["ng", "serve", "--host", "0.0.0.0"]
