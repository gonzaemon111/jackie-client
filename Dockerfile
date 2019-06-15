FROM node:12.4.0-alpine
WORKDIR /app
COPY . .
RUN apk update && \
    apk add --no-cache \
    curl \
    git \
    vim \
    bash && \
    npm install -g yarn && \
    yarn add global @vue/cli && \
    yarn install

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["yarn", "dev"]