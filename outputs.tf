output "app_service_certificates_id" {
  description = "Map of id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.id }
}
output "app_service_certificates_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.app_service_plan_id }
}
output "app_service_certificates_expiration_date" {
  description = "Map of expiration_date values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.expiration_date }
}
output "app_service_certificates_friendly_name" {
  description = "Map of friendly_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.friendly_name }
}
output "app_service_certificates_host_names" {
  description = "Map of host_names values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.host_names }
}
output "app_service_certificates_hosting_environment_profile_id" {
  description = "Map of hosting_environment_profile_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.hosting_environment_profile_id }
}
output "app_service_certificates_issue_date" {
  description = "Map of issue_date values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.issue_date }
}
output "app_service_certificates_issuer" {
  description = "Map of issuer values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.issuer }
}
output "app_service_certificates_key_vault_id" {
  description = "Map of key_vault_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.key_vault_id }
}
output "app_service_certificates_key_vault_secret_id" {
  description = "Map of key_vault_secret_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.key_vault_secret_id }
}
output "app_service_certificates_location" {
  description = "Map of location values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.location }
}
output "app_service_certificates_name" {
  description = "Map of name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.name }
}
output "app_service_certificates_password" {
  description = "Map of password values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.password }
  sensitive   = true
}
output "app_service_certificates_pfx_blob" {
  description = "Map of pfx_blob values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.pfx_blob }
  sensitive   = true
}
output "app_service_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.resource_group_name }
}
output "app_service_certificates_subject_name" {
  description = "Map of subject_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.subject_name }
}
output "app_service_certificates_tags" {
  description = "Map of tags values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.tags }
}
output "app_service_certificates_thumbprint" {
  description = "Map of thumbprint values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.thumbprint }
}

