#!/bin/bash

set -e
cd $(dirname "$0")/..

docker build -t khulnasoft/ml-cicd-gpu -f docker/gpu.Dockerfile .
docker push khulnasoft/ml-cicd-gpu
docker run -e DASK_SCHEDULER=$DASK_SCHEDULER --runtime=nvidia -it -p 8888:8888 -v $PWD:/data khulnasoft/ml-cicd bash