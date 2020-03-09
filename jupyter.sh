#!/usr/bin/env bash
set -e

if [[ -z `which poetry` ]]; then
    echo "poetry is required: install with pip install poetry" 1>&2
    exit 1
fi

poetry install
poetry run ipython kernel install --user --name=covid19
poetry run jupyter notebook
