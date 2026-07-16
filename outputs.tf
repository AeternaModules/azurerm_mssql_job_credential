output "mssql_job_credentials_id" {
  description = "Map of id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_job_credentials_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.job_agent_id if v.job_agent_id != null && length(v.job_agent_id) > 0 }
}
output "mssql_job_credentials_name" {
  description = "Map of name values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_job_credentials_password" {
  description = "Map of password values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "mssql_job_credentials_password_wo" {
  description = "Map of password_wo values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password_wo if v.password_wo != null && length(v.password_wo) > 0 }
}
output "mssql_job_credentials_password_wo_version" {
  description = "Map of password_wo_version values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password_wo_version if v.password_wo_version != null }
}
output "mssql_job_credentials_username" {
  description = "Map of username values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.username if v.username != null && length(v.username) > 0 }
}

