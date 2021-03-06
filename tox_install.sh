#!/usr/bin/env bash

# On Travis CI quickly install python-libsbml wheels.
if [[ -n "${CI}" ]]; then
    pip install --find-links "https://s3.eu-central-1.amazonaws.com/moonlight-science/wheelhouse/index.html" --no-index python-libsbml==5.12.1
fi
pip "$@"
