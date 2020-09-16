#!/bin/bash
# run FULLNAME="Fiona Wong" SPECIALTY="Cardiology" EMAIL="fi@fi.com" PASSWORD="fi" PASSWORD_CONFIRMATION="fi" sh curl-scripts/auth/sign-up.sh

API="http://localhost:4741"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "full_name": "'"${FULLNAME}"'",
      "specialty": "'"${SPECIALTY}"'",
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
