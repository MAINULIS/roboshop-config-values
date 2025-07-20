variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
  }
}

variable "secrets" {
  default = {
    cart = {
      secret_mount = "roboshop-dev"
      kv = {
        REDIS_HOST           = "redis-dev.maidevops.fun",
        CATALOGUE_HOST       = "catalogue-dev.maidevops.fun",
        CATALOGUE_PORT       = 8080
      }
    }
  }
}