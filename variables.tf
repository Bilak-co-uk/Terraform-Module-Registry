# TFC organisation names
variable "org_name" {
  description = "Name of the Terraform Cloud organisation."
  type        = string
}

# Module lists — defined in modules-lists.auto.tfvars
variable "modules" {
  description = "List of GitHub repo paths (org/repo) for all modules."
  type        = list(string)
}
