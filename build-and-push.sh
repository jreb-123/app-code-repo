#!/bin/bash
set -e

# Nombre de la imagen y tag desde la variable de GitHub
IMAGE_NAME="jrebaza01/app"
IMAGE_TAG=${GITHUB_SHA:-latest}

echo "Construyendo imagen $IMAGE_NAME:$IMAGE_TAG..."
docker build -t $IMAGE_NAME:$IMAGE_TAG .

echo "Subiendo imagen a Docker Hub..."
docker push $IMAGE_NAME:$IMAGE_TAG
