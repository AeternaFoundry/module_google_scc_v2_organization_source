variable "scc_v2_organization_sources" {
  description = <<EOT
Map of scc_v2_organization_sources, attributes below
Required:
    - display_name
    - organization
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name = string
    organization = string
    description  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.scc_v2_organization_sources : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

