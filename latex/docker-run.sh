#!/bin/bash 
set -e

PAPER=paperName

usage() {
  echo "Usage: $0 [docker image name] [command]"
  echo
  echo Runs command in the specified docker image for cont. int.
  echo
}

cd "$(dirname "$0")/.."

IMAGE="$1"
if [[ -z "$IMAGE" ]]; then
  echo Error: image not defined
  exit 1
fi

docker pull "$IMAGE"
shift

ARGS=(--workdir /$PAPER --volume "$PWD:/$PAPER" --rm)

# Environment variables to propagate into the container
ARGS+=(
  --env BUILDKITE
  --env BUILDKITE_TAG
)

set -x
docker run "${ARGS[@]}" "$IMAGE" "$@"
