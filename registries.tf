# Populate registries with modules in modules
# Authentication is done using tfe_token environment variable
#############################

# The GitHub App installation TFC uses to reach the module repos.
data "tfe_github_app_installation" "modules" {
  name = "Bilak-Terraform-Modules"
}

# ORG REGISTRY
resource "tfe_registry_module" "org_modules" {
  for_each     = toset(var.modules)
  organization = var.org_name
  vcs_repo {
    display_identifier         = each.value
    identifier                 = each.value
    github_app_installation_id = data.tfe_github_app_installation.modules.id
  }
}
