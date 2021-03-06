#!/bin/sh

curl --insecure \
     --user "$cp4iuser:$cp4ipw" \
     --request POST \
     --url "$cp4ibasepath/CarRepairClaim" \
     --header "X-IBM-Client-Id:$cp4iclientid" \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '{
         "Name":"Brenda Beemer",
         "eMail":"beemerbrenda@example.com",
         "LicensePlate":"ILUVZ4",
         "DescriptionOfDamage":"Turbo is down on power and I like to drive fast - please tune it up!",
         "PhotoOfCar":"'$(base64 roadster.jpg)'",
         "ContactID":"8897796795006976"
         }'