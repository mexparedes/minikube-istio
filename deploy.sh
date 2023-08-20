#!/bin/bash

# Cambia estos valores según tus credenciales y detalles de la imagen
DOCKER_USERNAME="mexparedes"
DOCKER_PASSWORD="Mexparedes@20"
IMAGE_NAME="mexparedes/api-pruebas"
IMAGE_TAG=$(date +'%Y%m%d%H%M%S')  # Genera un timestamp para usar como etiqueta

# Iniciar sesión en Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Construir y etiquetar la imagen (si aún no lo has hecho)
docker build -t "$IMAGE_NAME:$IMAGE_TAG" .

# Subir la imagen a Docker Hub
docker push "$IMAGE_NAME:$IMAGE_TAG"
