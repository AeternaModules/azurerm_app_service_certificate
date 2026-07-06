output "app_service_certificates" {
  description = "All app_service_certificate resources"
  value       = azurerm_app_service_certificate.app_service_certificates
  sensitive   = true
}
output "app_service_certificates_app_service_plan_id" {
  description = "List of app_service_plan_id values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.app_service_plan_id]
}
output "app_service_certificates_expiration_date" {
  description = "List of expiration_date values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.expiration_date]
}
output "app_service_certificates_friendly_name" {
  description = "List of friendly_name values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.friendly_name]
}
output "app_service_certificates_host_names" {
  description = "List of host_names values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.host_names]
}
output "app_service_certificates_hosting_environment_profile_id" {
  description = "List of hosting_environment_profile_id values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.hosting_environment_profile_id]
}
output "app_service_certificates_issue_date" {
  description = "List of issue_date values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.issue_date]
}
output "app_service_certificates_issuer" {
  description = "List of issuer values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.issuer]
}
output "app_service_certificates_key_vault_id" {
  description = "List of key_vault_id values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.key_vault_id]
}
output "app_service_certificates_key_vault_secret_id" {
  description = "List of key_vault_secret_id values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.key_vault_secret_id]
}
output "app_service_certificates_location" {
  description = "List of location values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.location]
}
output "app_service_certificates_name" {
  description = "List of name values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.name]
}
output "app_service_certificates_password" {
  description = "List of password values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.password]
  sensitive   = true
}
output "app_service_certificates_pfx_blob" {
  description = "List of pfx_blob values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.pfx_blob]
  sensitive   = true
}
output "app_service_certificates_resource_group_name" {
  description = "List of resource_group_name values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.resource_group_name]
}
output "app_service_certificates_subject_name" {
  description = "List of subject_name values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.subject_name]
}
output "app_service_certificates_tags" {
  description = "List of tags values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.tags]
}
output "app_service_certificates_thumbprint" {
  description = "List of thumbprint values across all app_service_certificates"
  value       = [for k, v in azurerm_app_service_certificate.app_service_certificates : v.thumbprint]
}

