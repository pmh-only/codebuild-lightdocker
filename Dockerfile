FROM public.ecr.aws/docker/library/alpine:latest

RUN apk add --no-cache docker aws-cli

COPY ./fake-bash.sh /bin/bash

RUN chmod a+rwx /bin/bash
