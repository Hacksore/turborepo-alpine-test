FROM node:16.18-alpine

ENV TURBO_VERSION 1.6.1
ENV YARN_VERSION 3.2.4

WORKDIR /app

# add git
RUN apk add --no-cache git

# missing dep for turbo - mentioned by @nathanhammond
# on https://github.com/vercel/turborepo/issues/2293 
RUN apk add --no-cache libc6-compat

# create app
RUN git clone https://github.com/vercel/turborepo.git

RUN cd turborepo/examples/basic && npm install

WORKDIR /app/turborepo/examples/basic

ENTRYPOINT /bin/sh