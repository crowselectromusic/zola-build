#!/bin/bash
set -e
set -o pipefail

main() {
    echo "Building zola site..."
    cd "${INPUT_DIRECTORY}"
    zola build
}

main "$@"
