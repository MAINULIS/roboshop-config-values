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

    frontend = {
      secret_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL           = "http://catalogue-dev.maidevops.fun:8200/",
        USER_URL           = "http://user-dev.maidevops.fun:8200/",
        CART_URL           = "http://cart-dev.maidevops.fun:8200/",
        SHIPPING_URL           = "http://shipping-dev.maidevops.fun:8200/",
        PAYMENT_URL           = "http://payment-dev.maidevops.fun:8200/",
        CATALOGUE_HOST       = "catalogue-dev.maidevops.fun",
        CATALOGUE_PORT       = 8080
      }
    }
  }
}