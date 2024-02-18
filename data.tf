data "onepassword_vault" "vault" {
  count = alltrue([(var.static_path)]) ? 0 : 1
  name  = var.vault
}

data "onepassword_item" "item" {
  count = alltrue([(length(data.onepassword_vault.vault) > 0)]) ? 1 : 0
  vault = data.onepassword_vault.vault.0.uuid
  title = var.name
}