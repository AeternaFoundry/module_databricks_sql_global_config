output "sql_global_configs_id" {
  description = "Map of id values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no id are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_global_configs_data_access_config" {
  description = "Map of data_access_config values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no data_access_config are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.data_access_config if v.data_access_config != null && length(v.data_access_config) > 0 }
}
output "sql_global_configs_enable_serverless_compute" {
  description = "Map of enable_serverless_compute values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no enable_serverless_compute are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.enable_serverless_compute if v.enable_serverless_compute != null }
}
output "sql_global_configs_google_service_account" {
  description = "Map of google_service_account values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no google_service_account are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.google_service_account if v.google_service_account != null && length(v.google_service_account) > 0 }
}
output "sql_global_configs_instance_profile_arn" {
  description = "Map of instance_profile_arn values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no instance_profile_arn are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.instance_profile_arn if v.instance_profile_arn != null && length(v.instance_profile_arn) > 0 }
}
output "sql_global_configs_provider_config" {
  description = "Map of provider_config values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_global_configs_security_policy" {
  description = "Map of security_policy values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no security_policy are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.security_policy if v.security_policy != null && length(v.security_policy) > 0 }
}
output "sql_global_configs_sql_config_params" {
  description = "Map of sql_config_params values across all sql_global_configs, keyed the same as var.sql_global_configs except keys with no sql_config_params are omitted"
  value       = { for k, v in databricks_sql_global_config.sql_global_configs : k => v.sql_config_params if v.sql_config_params != null && length(v.sql_config_params) > 0 }
}

