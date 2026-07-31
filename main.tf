terraform {
  required_version = "~> 1.15.0"

  backend "remote" {
    organization = "Bilak"

    workspaces {
      name = "Terraform-Module-Registry"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.79.0"
    }
  }
}

# Authentication is handled via the TFE_TOKEN environment variable,
# set as a sensitive workspace variable in Terraform Cloud.
provider "tfe" {
}
