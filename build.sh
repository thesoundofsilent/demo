#!/usr/bin/env bash
GOOS=linux go build  -o ./tctrace edgeknife/tctrace
docker build --build-arg BIN=tctrace -t demo:0.0.1 .
rm tctrace