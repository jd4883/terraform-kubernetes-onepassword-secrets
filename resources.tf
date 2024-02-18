resource "kubernetes_manifest" "credential_secrets" {
  manifest = {
    apiVersion = "onepassword.com/v1"
    kind       = "OnePasswordItem"
    metadata = {
      name      = var.name
      namespace = var.namespace
    }
    spec = { itemPath = alltrue([(length(data.onepassword_item.item) > 0)]) ? data.onepassword_item.item.0.id : var.path }
  }
}