resource "google_scc_v2_organization_source" "scc_v2_organization_sources" {
  for_each = var.scc_v2_organization_sources

  display_name = each.value.display_name
  organization = each.value.organization
  description  = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

