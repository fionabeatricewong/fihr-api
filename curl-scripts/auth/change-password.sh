#!/bin/bash
# run TOKEN="038b4a9898b3a6be5d03c59137ea63cc" OLDPW="fi" NEWPW="fifi" sh curl-scripts/auth/change-password.sh

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
