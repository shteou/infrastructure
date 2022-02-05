# Infrastructure Terraform

This repository houses the terraform for my personal
infrastructure. This comprises a kubernetes cluster
and autoscaling pool.

## Usage

```
export SCW_ACCESS_KEY=SCW*****************
export SCW_SECRET_KEY=********-****-****-**********
export AWS_ACCESS_KEY_ID=$SCW_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=$SCW_SECRET_KEY
terraform init
terraform plan --var-file=params/prod.tfparams
terraform plan --var-file=params/prod.tfparams
```
