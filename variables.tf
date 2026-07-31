# TFC organisation names
variable "org_name" {
  description = "Name of the Terraform Cloud organisation."
  type        = string
}

variable "org_registry_token" {
  description = "VCS OAuth token (GitHub) for the TFC organisation registry."
  type        = string
  sensitive   = true
}

# Module lists — defined in modules-lists.auto.tfvars
variable "modules" {
  description = "List of GitHub repo paths (org/repo) for all modules."
  type        = list(string)
}
