#!/bin/bash
# run: TOKEN="9ca950b0f676a0f326fed2e7aec66773" FIRSTNAME="John" MIDDLENAME="Joe" LASTNAME="Doe" DOB="02-02-1992" GENDER="male" PHONE="9876543210" EMAIL="john@doe.com" sh curl-scripts/patients/create.sh

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "patient": {
      "firstName": "'"${FIRSTNAME}"'",
      "middleName": "'"${MIDDLENAME}"'",
      "lastName": "'"${LASTNAME}"'",
      "dob": "'"${DOB}"'",
      "gender": "'"${GENDER}"'",
      "phone": "'"${PHONE}"'",
      "email": "'"${EMAIL}"'"
    }
  }'

echo
