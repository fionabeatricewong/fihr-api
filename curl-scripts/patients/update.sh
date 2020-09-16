#!/bin/bash

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "patient": {
    "first_name": "'"${FIRSTNAME}"'",
    "middle_name": "'"${MIDDLENAME}"'",
    "last_name": "'"${LASTNAME}"'",
    "dob": "'"${DOB}"'",
    "gender": "'"${GENDER}"'",
    "phone": "'"${PHONE}"'",
    "email": "'"${EMAIL}"'",
  }
}'

echo
