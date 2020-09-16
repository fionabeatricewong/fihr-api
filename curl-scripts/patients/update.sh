#!/bin/bash
# run TOKEN="9ca950b0f676a0f326fed2e7aec66773"  ID="5f626157d7063434d7997426" PHONE="9876543213" EMAIL="john@doe2.com" sh curl-scripts/patients/update.sh

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
    "email": "'"${EMAIL}"'"
  }
}'

echo
