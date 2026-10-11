variable "os_management_hub_software_source_module_streams_lookup" {
  description = <<EOT
Map of os_management_hub_software_source_module_streams_lookup, attributes below
Required:
    - software_source_id
Optional:
    - is_latest
    - module_name
    - module_name_contains
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    software_source_id   = string
    is_latest            = optional(bool)
    module_name          = optional(string)
    module_name_contains = optional(string)
    name                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

