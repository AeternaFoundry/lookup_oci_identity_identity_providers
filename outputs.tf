output "identity_identity_providers_lookup_id" {
  description = "Map of id values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_identity_providers_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_identity_providers_lookup_filter" {
  description = "Map of filter values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_identity_providers_lookup_identity_providers" {
  description = "Map of identity_providers values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no identity_providers are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.identity_providers if v.identity_providers != null && length(v.identity_providers) > 0 }
}
output "identity_identity_providers_lookup_name" {
  description = "Map of name values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_identity_providers_lookup_protocol" {
  description = "Map of protocol values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no protocol are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "identity_identity_providers_lookup_state" {
  description = "Map of state values across all identity_identity_providers_lookup, keyed the same as var.identity_identity_providers_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_identity_identity_providers.identity_identity_providers_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

