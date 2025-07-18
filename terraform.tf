provider "vault" {
  address = "http://vault-internal.maidevops.fun:8200"
  token = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-my85"
    key    = "roboshop-config-values/terraform.tstate"
    region = "us-east-1"
  }
}