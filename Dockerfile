FROM node:16.16.0-alpine3.16 As development

RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli \
    && rm -rf /var/cache/apk/*

ENV NODE_VERSION 16.0.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=development

COPY . .

EXPOSE 3000 

CMD ["node", "dist/main.js"]