#!/usr/bin/env bash

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
eval "$(docker-machine env dev)" && docker-machine scp -r dev:/etc/ssl/certs/ certs
eval "$(docker-machine env dev)" && docker build -t golangdocker -f Dockerfile .
rm -rf certs
