#!/bin/bash

set -e

echo "${INPUT_GOOGLE_APPLICATION_CREDENTIALS}" | base64 -d > "${HOME}/gcloud.json"

echo "Authenticating with Google Cloud..."
gcloud auth activate-service-account --key-file="${HOME}/gcloud.json" --project "${INPUT_PROJECT_ID}"

echo "Syncing DAG to ${INPUT_ENVIRONMENT} environment"

gcloud composer environments storage dags import \
  --environment ${INPUT_ENVIRONMENT} \
  --location ${INPUT_LOCATION} \
  --project ${INPUT_PROJECT_ID} \
  --source ${INPUT_DAG_NAME}