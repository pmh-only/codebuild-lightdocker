FROM public.ecr.aws/docker/library/alpine:latest

RUN apk add --no-cache docker aws-cli

RUN printf '#!/bin/sh\n/bin/ash "$@"\n' > /bin/bash

RUN chmod a+rwx /bin/bash

ENTRYPOINT ["/usr/bin/dockerd"]
