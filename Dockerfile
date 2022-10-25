FROM node:16.18-alpine

WORKDIR /app

# add git and curl
RUN apk add --no-cache git curl

# missing dep for turbo - mentioned by @nathanhammond
# on https://github.com/vercel/turborepo/issues/2293 
RUN apk add --no-cache libc6-compat

# install pnpm
RUN curl -fsSL "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" -o /bin/pnpm && chmod +x /bin/pnpm

# create app
RUN git clone https://github.com/vercel/turborepo.git

RUN cd turborepo/examples/basic && pnpm install

WORKDIR /app/turborepo/examples/basic

ENTRYPOINT /bin/sh