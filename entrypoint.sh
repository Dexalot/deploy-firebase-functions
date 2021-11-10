#!/bin/sh

npm install;

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --only functions \
    --project ${PRODUCTION_ID} 

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --only functions \
    --project ${DEVTEST_ID} 
