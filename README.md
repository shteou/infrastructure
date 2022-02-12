# Infrastructure Terraform

This repository houses the terraform for my personal
infrastructure. This comprises a kubernetes cluster
and autoscaling pool.

## Pre-requisites

1. You'll need to create a Scaleway API key and secret.
1. In addition, you'll need to create a Scaleway S3 bucket
   to store the terraform state.  
1. Finally update the params files as necessary


## Usage

```
export SCW_ACCESS_KEY=SCW*****************
export SCW_SECRET_KEY=********-****-****-**********
export AWS_ACCESS_KEY_ID=$SCW_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=$SCW_SECRET_KEY
terraform init
terraform plan --var-file=params/prod.tfparams
terraform apply --var-file=params/prod.tfparams
```
