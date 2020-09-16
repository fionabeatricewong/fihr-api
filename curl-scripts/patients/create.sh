#!/bin/bash
# run TOKEN="038b4a9898b3a6be5d03c59137ea63cc"

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
