resource "vault_mount" "component" {
  path        = "roboshop-dev"
  type        = "kv-v2"
  options = {
    version = "2"
    type    = "kv-v2"
  }
  description = "RoboShop Dev"
}