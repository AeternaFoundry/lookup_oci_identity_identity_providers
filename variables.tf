variable "identity_identity_providers_lookup" {
  description = <<EOT
Map of identity_identity_providers_lookup, attributes below
Required:
    - compartment_id
    - protocol
Optional:
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    protocol       = string
    name           = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

