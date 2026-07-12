output "mssql_job_credentials_id" {
  description = "Map of id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.id }
}
output "mssql_job_credentials_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.job_agent_id }
}
output "mssql_job_credentials_name" {
  description = "Map of name values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.name }
}
output "mssql_job_credentials_password" {
  description = "Map of password values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password }
  sensitive   = true
}
output "mssql_job_credentials_password_wo" {
  description = "Map of password_wo values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password_wo }
}
output "mssql_job_credentials_password_wo_version" {
  description = "Map of password_wo_version values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.password_wo_version }
}
output "mssql_job_credentials_username" {
  description = "Map of username values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = { for k, v in azurerm_mssql_job_credential.mssql_job_credentials : k => v.username }
}

