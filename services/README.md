Services here
with his compose.yml and Dockerfile

Example Dockerfile for a node/express application:

```
FROM node:alpine

WORKDIR /app
COPY . .
RUN npm install

CMD [ "npm", "start" ]
```

Example compose.yml:

```
version: "3"
services:
  static:
    build:
      dockerfile: Dockerfile
      context: ./services/static
    environment:
      - NODE_ENV=production
    volumes:
      - ./services/static/public:/app/public
    networks:
      - web
    labels:
      - traefik.backend=static

```