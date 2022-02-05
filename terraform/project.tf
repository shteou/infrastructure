variable "project_id" {
  type        = string
  description = "Your project ID."
}

provider "scaleway" {
  zone   = "fr-par-1"
  region = "fr-par"
}
