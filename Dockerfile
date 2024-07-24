FROM public.ecr.aws/docker/library/alpine:latest

RUN apk add --no-cache docker-cli aws-cli-pyc

RUN printf '#!/bin/sh\n/bin/ash "$@"\n' > /bin/bash

RUN chmod a+rwx /bin/bash
