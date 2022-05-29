#!/bin/bash
set -e
set -o pipefail

main() {
    echo "Running zola with root ${INPUT_ROOT}"
    zola --root "${INPUT_ROOT}" build
}

main "$@"
