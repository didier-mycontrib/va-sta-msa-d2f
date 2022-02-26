LOCAL_SERVICE_URL=http://localhost:8232/user-api/private/user
echo "new password for main admin (didier):"
read PWD

jsonDATA="{ \"username\" : \"didier\" , \"password\" : \"${PWD}\"  , \"roles\" : \"admin\"}"
  
curl -i -X PUT \
  -H "Content-Type: application/json" \
  --url $LOCAL_SERVICE_URL \
  --data $jsonDATA
  
curl http://localhost:8232/user-api/private/user
