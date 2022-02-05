terraform {
  backend "s3" {
    bucket                      = "shteou-terraform-state"
    key                         = "infrastructure.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
