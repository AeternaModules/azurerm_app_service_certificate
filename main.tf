data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.app_service_certificates : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
data "azurerm_key_vault_secret" "pfx_blob" {
  for_each     = { for k, v in var.app_service_certificates : k => v if v.pfx_blob_key_vault_id != null && v.pfx_blob_key_vault_secret_name != null }
  name         = each.value.pfx_blob_key_vault_secret_name
  key_vault_id = each.value.pfx_blob_key_vault_id
}
resource "azurerm_app_service_certificate" "app_service_certificates" {
  for_each = var.app_service_certificates

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  app_service_plan_id = each.value.app_service_plan_id
  key_vault_id        = each.value.key_vault_id
  key_vault_secret_id = each.value.key_vault_secret_id
  password            = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  pfx_blob            = each.value.pfx_blob != null ? each.value.pfx_blob : try(data.azurerm_key_vault_secret.pfx_blob[each.key].value, null)
  tags                = each.value.tags
}

