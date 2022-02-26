LOCAL_SERVICE_URL=http://localhost:8232/user-api/private/user
echo "new password for main admin (didier):"
read PWD
echo "new password will be ${PWD}"
jsonDATA="{ \"username\" : \"didier\" , \"password\" : \"${PWD}\"  , \"roles\" : \"admin\" }"
echo $jsonDATA  
curl $LOCAL_SERVICE_URL -X PUT -H "Content-Type: application/json" -d "{ \"username\" : \"didier\" , \"password\" : \"${PWD}\"  , \"roles\" : \"admin\" }"
echo "in mongo database updated values are :"  
curl http://localhost:8232/user-api/private/user/didier
