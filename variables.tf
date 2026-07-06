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
    - pfx_blob
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    app_service_plan_id = optional(string)
    key_vault_id        = optional(string)
    key_vault_secret_id = optional(string)
    password            = optional(string)
    pfx_blob            = optional(string)
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificates : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_certificate's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: pfx_blob
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: password
  #   source:    validation.NoZeroValues(...) - no translation rule yet, add one
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] !ok
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] err != nil
  # path: key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

