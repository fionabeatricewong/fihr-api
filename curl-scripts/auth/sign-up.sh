#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "name": {
        "first": "'"${FIRST}"'",
        "middle": "'"${MIDDLE}"'",
        "last": "'"${LAST}"'",
      },
      "specialty": "'"${SPECIALTY}"'",
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
