# Populate registries with modules in modules
# Authentication is done using tfe_token environment variable
#############################

# ORG REGISTRY
resource "tfe_registry_module" "org_modules" {
  for_each     = toset(var.modules)
  organization = var.org_name
  vcs_repo {
    display_identifier = each.value
    identifier         = each.value
    oauth_token_id     = var.org_registry_token
  }
}
