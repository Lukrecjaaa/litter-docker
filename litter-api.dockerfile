FROM node:alpine

COPY ./litter-api /api
WORKDIR /api

ENV CORS_ALLOWED_ORIGIN=http://localhost:8888
ENV REDIS_URL=redis://redis:6379
ENV BASE_PATH=./uploads

RUN yarn set version stable
RUN yarn