data "oci_os_management_hub_software_source_module_streams" "os_management_hub_software_source_module_streams_lookup" {
  for_each = var.os_management_hub_software_source_module_streams_lookup

  software_source_id   = each.value.software_source_id
  is_latest            = each.value.is_latest
  module_name          = each.value.module_name
  module_name_contains = each.value.module_name_contains
  name                 = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

