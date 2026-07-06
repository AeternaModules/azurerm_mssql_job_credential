output "mssql_job_credentials" {
  description = "All mssql_job_credential resources"
  value       = azurerm_mssql_job_credential.mssql_job_credentials
  sensitive   = true
}
output "mssql_job_credentials_job_agent_id" {
  description = "List of job_agent_id values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.job_agent_id]
}
output "mssql_job_credentials_name" {
  description = "List of name values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.name]
}
output "mssql_job_credentials_password" {
  description = "List of password values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.password]
  sensitive   = true
}
output "mssql_job_credentials_password_wo" {
  description = "List of password_wo values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.password_wo]
}
output "mssql_job_credentials_password_wo_version" {
  description = "List of password_wo_version values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.password_wo_version]
}
output "mssql_job_credentials_username" {
  description = "List of username values across all mssql_job_credentials"
  value       = [for k, v in azurerm_mssql_job_credential.mssql_job_credentials : v.username]
}

