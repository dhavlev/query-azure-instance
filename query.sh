#!/bin/bash

#  ./query.sh f50013c3-6415-4ea1-bd23-adc1835380e3 classic-app e84d8b2f-c5f5-4392-89c8-e4e70def21ed p-6NjWK4fqFN731S-s~.9hzL_i584JJOPH name

tenantId=$1
resourceGroup=$2
clientId=$3
clientSecret=$4
query=$5


token=$(curl -X POST -d "grant_type=client_credentials&client_id=$clientId&client_secret=$clientSecret&resource=https%3A%2F%2Fmanagement.azure.com%2F" https://login.microsoftonline.com/${tenantId}/oauth2/token | jq .access_token -r)

curl -X GET -H "Authorization: Bearer $token" \
     -H "Content-Type:application/json" \
     -H "Content-Type: application/json" \
     https://management.azure.com/subscriptions/b0e74281-8ae5-4c81-9e0e-dcc33229509d/resourceGroups/$resourceGroup/providers/Microsoft.Compute/virtualMachines/web1?api-version=2021-03-01 | jq .${query} -r