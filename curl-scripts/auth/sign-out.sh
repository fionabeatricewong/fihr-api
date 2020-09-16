#!/bin/bash
# run TOKEN="038b4a9898b3a6be5d03c59137ea63cc" sh curl-scripts/auth/sign-out.sh

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
