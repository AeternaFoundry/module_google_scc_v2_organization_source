output "scc_v2_organization_sources_id" {
  description = "Map of id values across all scc_v2_organization_sources, keyed the same as var.scc_v2_organization_sources except keys with no id are omitted"
  value       = { for k, v in google_scc_v2_organization_source.scc_v2_organization_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "scc_v2_organization_sources_description" {
  description = "Map of description values across all scc_v2_organization_sources, keyed the same as var.scc_v2_organization_sources except keys with no description are omitted"
  value       = { for k, v in google_scc_v2_organization_source.scc_v2_organization_sources : k => v.description if v.description != null && length(v.description) > 0 }
}
output "scc_v2_organization_sources_display_name" {
  description = "Map of display_name values across all scc_v2_organization_sources, keyed the same as var.scc_v2_organization_sources except keys with no display_name are omitted"
  value       = { for k, v in google_scc_v2_organization_source.scc_v2_organization_sources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "scc_v2_organization_sources_name" {
  description = "Map of name values across all scc_v2_organization_sources, keyed the same as var.scc_v2_organization_sources except keys with no name are omitted"
  value       = { for k, v in google_scc_v2_organization_source.scc_v2_organization_sources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "scc_v2_organization_sources_organization" {
  description = "Map of organization values across all scc_v2_organization_sources, keyed the same as var.scc_v2_organization_sources except keys with no organization are omitted"
  value       = { for k, v in google_scc_v2_organization_source.scc_v2_organization_sources : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

