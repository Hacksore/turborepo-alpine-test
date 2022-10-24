build:
	docker build --platform=linux/amd64 -t hacksore/turborepo:alpine . && docker run -it --entrypoint /bin/sh hacksore/turborepo:alpine