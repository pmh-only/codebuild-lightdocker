FROM public.ecr.aws/docker/library/alpine:latest

RUN apk add --no-cache docker-cli aws-cli-pyc
