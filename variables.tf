variable "app_service_certificates" {
  description = <<EOT
Map of app_service_certificates, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - app_service_plan_id
    - key_vault_id
    - key_vault_secret_id
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - pfx_blob
    - pfx_blob_key_vault_id (alternative to pfx_blob - read from Key Vault instead)
    - pfx_blob_key_vault_secret_name (alternative to pfx_blob - read from Key Vault instead)
    - tags
EOT

  type = map(object({
    location                       = string
    name                           = string
    resource_group_name            = string
    app_service_plan_id            = optional(string)
    key_vault_id                   = optional(string)
    key_vault_secret_id            = optional(string)
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    pfx_blob                       = optional(string)
    pfx_blob_key_vault_id          = optional(string)
    pfx_blob_key_vault_secret_name = optional(string)
    tags                           = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        v.pfx_blob == null || (can(base64decode(v.pfx_blob)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

