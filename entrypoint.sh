#!/bin/sh

npm install;

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --project ${PRODUCTION_ID} \
    --only functions

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --project ${DEVTEST_ID} \
    --only functions
