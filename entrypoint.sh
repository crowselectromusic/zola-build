#!/bin/bash
set -e
set -o pipefail

main() {
    echo "Running zola with root ${INPUT_ROOT}"
    if [[ -n "${INPUT_BASE_URL}" ]];  then
        echo "Running zola with base_url ${INPUT_BASE_URL}"
        zola --root "${INPUT_ROOT}" build --base-url "${INPUT_BASE_URL}"
    else
        zola --root "${INPUT_ROOT}" build 
    fi
}

main "$@"
