output "app_service_certificates_id" {
  description = "Map of id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_certificates_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.app_service_plan_id if v.app_service_plan_id != null && length(v.app_service_plan_id) > 0 }
}
output "app_service_certificates_expiration_date" {
  description = "Map of expiration_date values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.expiration_date if v.expiration_date != null && length(v.expiration_date) > 0 }
}
output "app_service_certificates_friendly_name" {
  description = "Map of friendly_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "app_service_certificates_host_names" {
  description = "Map of host_names values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.host_names if v.host_names != null && length(v.host_names) > 0 }
}
output "app_service_certificates_hosting_environment_profile_id" {
  description = "Map of hosting_environment_profile_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.hosting_environment_profile_id if v.hosting_environment_profile_id != null && length(v.hosting_environment_profile_id) > 0 }
}
output "app_service_certificates_issue_date" {
  description = "Map of issue_date values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.issue_date if v.issue_date != null && length(v.issue_date) > 0 }
}
output "app_service_certificates_issuer" {
  description = "Map of issuer values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.issuer if v.issuer != null && length(v.issuer) > 0 }
}
output "app_service_certificates_key_vault_id" {
  description = "Map of key_vault_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "app_service_certificates_key_vault_secret_id" {
  description = "Map of key_vault_secret_id values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.key_vault_secret_id if v.key_vault_secret_id != null && length(v.key_vault_secret_id) > 0 }
}
output "app_service_certificates_location" {
  description = "Map of location values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "app_service_certificates_name" {
  description = "Map of name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_service_certificates_password" {
  description = "Map of password values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "app_service_certificates_pfx_blob" {
  description = "Map of pfx_blob values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.pfx_blob if v.pfx_blob != null && length(v.pfx_blob) > 0 }
  sensitive   = true
}
output "app_service_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "app_service_certificates_subject_name" {
  description = "Map of subject_name values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.subject_name if v.subject_name != null && length(v.subject_name) > 0 }
}
output "app_service_certificates_tags" {
  description = "Map of tags values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "app_service_certificates_thumbprint" {
  description = "Map of thumbprint values across all app_service_certificates, keyed the same as var.app_service_certificates"
  value       = { for k, v in azurerm_app_service_certificate.app_service_certificates : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}

