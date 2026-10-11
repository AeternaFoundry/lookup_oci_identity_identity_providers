data "oci_identity_identity_providers" "identity_identity_providers_lookup" {
  for_each = var.identity_identity_providers_lookup

  compartment_id = each.value.compartment_id
  protocol       = each.value.protocol
  name           = each.value.name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

