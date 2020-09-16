#!/bin/sh
# run TOKEN="9ca950b0f676a0f326fed2e7aec66773"  ID="5f626157d7063434d7997426" sh curl-scripts/patients/show.sh

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
