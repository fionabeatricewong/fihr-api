#!/bin/bash
# run TOKEN="9ca950b0f676a0f326fed2e7aec66773" FIRSTNAME="Jane" LASTNAME="Doe" DOB="1990-01-01" GENDER="female" PHONE="1234567891" EMAIL="jane@doe.com" sh curl-scripts/patients/create.sh

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
