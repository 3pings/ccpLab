#!/bin/bash

echo "Deploying Hipster Application to CCP"


sed -e "s/apicTenant/$HOSTNAME/g" hipster-template.yaml > hipster-ready.yaml


# Services
kubectl apply -f hipster-ready.yaml