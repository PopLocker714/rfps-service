FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/localtunnel/server.git .

RUN npm install

EXPOSE 3000

CMD ["node", "bin/server.js", "--port", "3000"]
