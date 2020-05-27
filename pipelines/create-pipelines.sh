#!/bin/bash

source_repository=https://github.com/MicrosoftDocs/pipelines-azureml.git
source_path=pipelines/diabetes-train-and-deploy.yml
target_org_url=<DEVOPS_URL>
target_project=<PROJECT_NAME>
target_name=<PIPELINE_NAME>
target_description=<DESCRIPTION>

az pipelines create \
    --org $target_org_url \
    --project "$target_project" \
    --name "$target_name" \
    --description "$target_description" \
    --repository $source_repository \
    --yaml-path $source_path \
    --output none
