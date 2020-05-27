#!/bin/bash

org_url=<DEVOPS_URL>
project_name_or_id=<PROJECT_NAME>
vg_name=<VARIABLE_GROUP_NAME>

az pipelines variable-group create \
    --org $org_url \
    --project $project_name_or_id \
    --name $vg_name \
    --output yaml \
    --variables \
        ml-ws-connection=azmldemows \
        ml-ws=aml-demo \
        ml-rg=aml-demo \
        ml-ct=cpu-cluster-1 \
        ml-path=models/diabetes \
        ml-exp=exp-test \
        ml-model-name=diabetes-model \
        ml-aks-name=aks-prod
