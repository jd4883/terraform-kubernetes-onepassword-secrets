locals {
  secret = {
    apiVersion = "onepassword.com/v1"
    kind       = "OnePasswordItem"
    metadata   = { name = var.name, namespace = var.namespace }
    spec       = { itemPath = var.path }
  }
}