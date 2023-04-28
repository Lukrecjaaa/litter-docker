FROM node:alpine

COPY ./litter /app
WORKDIR /app

ENV VUE_APP_MAX_FILE_SIZE=104857600
ENV VUE_APP_API_URL=http://localhost:8888/post

RUN yarn set version stable
RUN yarn
RUN yarn build
RUN npm install --global http-server