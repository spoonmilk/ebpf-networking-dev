#!/bin/bash

set -e

SERVICE_NAME="ebpf"
DOCKER_DIR="./docker"

usage() {
    echo "Usage: $0 [build|run|both]"
    echo "  build   - Build the Docker container"
    echo "  run     - Run the container (assumes it's already built)"
    echo "  both    - Build then run (default)"
    exit 1
}

cd "$DOCKER_DIR"

case "$1" in
    build)
        echo "Building Docker image..."
        docker compose build "$SERVICE_NAME"
        ;;
    run)
        echo "Running container..."
        docker compose run --rm "$SERVICE_NAME"
        ;;
    both|"")
        echo "Building Docker image..."
        docker compose build "$SERVICE_NAME"
        echo "Running container..."
        docker compose run --rm "$SERVICE_NAME"
        ;;
    *)
        usage
        ;;
esac
