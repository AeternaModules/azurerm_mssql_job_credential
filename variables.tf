variable "mssql_job_credentials" {
  description = <<EOT
Map of mssql_job_credentials, attributes below
Required:
    - job_agent_id
    - name
    - username
Optional:
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - password_wo
    - password_wo_version
EOT

  type = map(object({
    job_agent_id                   = string
    name                           = string
    username                       = string
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    password_wo                    = optional(string)
    password_wo_version            = optional(number)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

