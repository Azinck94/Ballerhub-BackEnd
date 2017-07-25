curl --include --request POST http://localhost:4741/ballers/ \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=${TOKEN}" \
 --data '{
      "first name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "team": "'"${TEAM}"'",
      "position": "'"${POSITION}"'",
      "buckets": "'"${BUCKETS}"'",
      "rpg": "'"${RPG}"'",
      "apg": "'"${APG}"'",
      "sponsors": "'"${SPONSORS}"'",
      "shoes": "'"${SHOES}"'",
      "catchphrase": "'"${CATCHPHRASE}"'"
    }
  }'
