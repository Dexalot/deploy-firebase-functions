#!/bin/sh

npm install;

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    -P default \
    --only functions

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    -P production \
    --only functions
