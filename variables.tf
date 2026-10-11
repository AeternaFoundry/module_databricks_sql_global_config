variable "sql_global_configs" {
  description = <<EOT
Map of sql_global_configs, attributes below
Optional:
    - data_access_config
    - enable_serverless_compute
    - google_service_account
    - instance_profile_arn
    - security_policy
    - sql_config_params
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    data_access_config        = optional(map(string))
    enable_serverless_compute = optional(bool)
    google_service_account    = optional(string)
    instance_profile_arn      = optional(string)
    security_policy           = optional(string)
    sql_config_params         = optional(map(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

