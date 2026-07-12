data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.mssql_job_credentials : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_mssql_job_credential" "mssql_job_credentials" {
  for_each = var.mssql_job_credentials

  job_agent_id        = each.value.job_agent_id
  name                = each.value.name
  username            = each.value.username
  password            = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  password_wo         = each.value.password_wo
  password_wo_version = each.value.password_wo_version
}

