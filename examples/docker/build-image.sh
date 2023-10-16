#!/bin/bash
dockerfile=Dockerfile
docker build \
    -f ${dockerfile} . \
    -t optimum-habana-1p11-mh:latest \
    --network=host \
    --build-arg http_proxy=${http_proxy} \
    --build-arg https_proxy=${https_proxy} \
    --build-arg no_proxy=${no_proxy} \