resource "databricks_sql_global_config" "sql_global_configs" {
  for_each = var.sql_global_configs

  data_access_config        = each.value.data_access_config
  enable_serverless_compute = each.value.enable_serverless_compute
  google_service_account    = each.value.google_service_account
  instance_profile_arn      = each.value.instance_profile_arn
  security_policy           = each.value.security_policy
  sql_config_params         = each.value.sql_config_params

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

