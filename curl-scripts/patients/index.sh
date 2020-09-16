#!/bin/sh
# run TOKEN="9ca950b0f676a0f326fed2e7aec66773" sh curl-scripts/patients/index.sh

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
