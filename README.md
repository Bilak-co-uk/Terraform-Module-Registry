# Terraform Cloud Shared Module Repository

This Terraform code is used to populate the Terraform Cloud Shared Module Repository with ICT Cloud Team shared modules as well as additional user modules. The code in this pipeline is deployed using Terraform Cloud to provision all the infrastructure elements as listed below on both the Imperial College and Cloud Team organizations.

## Module List

Modules are listed in the `modules-lists.auto.tfvars` file using comma-separated lists:

The module formats are as follows:

```text
"Imperial-ICT-Cloud-TerraformRegistry/terraform-<PROVIDER>-<MODULE-NAME>"
```

- **Cloud Team modules**: Defined in the `cloud_team_modules` variable
- **Miscellaneous modules**: Other modules can be added to the `misc_modules` variable

**Example:**

```text
"Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-pim"
"Imperial-ICT-Cloud-TerraformRegistry/terraform-azuread-groups"
"Imperial-ICT-Cloud-TerraformRegistry/terraform-terraform-workspace"
```

## Registered Modules

### Cloud Team Modules

| Module Name | Provider | Type | Deprecated | Repository |
|-------------|----------|------|------------|------------|
| terraform-azurerm-container-registry | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-container-registry) |
| terraform-azurerm-aks | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-aks) |
| terraform-azurerm-backup-vault | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-backup-vault) |
| terraform-azurerm-bastion | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-bastion) |
| terraform-azurerm-diagnostics | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-diagnostics) |
| terraform-azurerm-firewall | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-firewall) |
| terraform-azurerm-public-ip | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-public-ip) |
| terraform-azurerm-recovery-services-vault | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-recovery-services-vault) |
| terraform-azurerm-virtual-machine-linux | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-machine-linux) |
| terraform-azurerm-virtual-machine-windows | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-machine-windows) |
| terraform-terraform-ict-tags | terraform | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-terraform-ict-tags) |
| terraform-azurerm-keyvault | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-keyvault) |
| terraform-azurerm-network-security-group | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-network-security-group) |
| terraform-azurerm-route-table | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-route-table) |
| terraform-azurerm-storage-account | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-storage-account) |
| terraform-azurerm-service-bus | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-service-bus) |
| terraform-azurerm-resource-group | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-resource-group) |
| terraform-azurerm-pe | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-pe) |
| terraform-azurerm-logic-apps | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-logic-apps) |
| terraform-azurerm-law | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-law) |
| terraform-azurerm-databricks | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-databricks) |
| terraform-azurerm-api-mgmt | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-api-mgmt) |
| terraform-azurerm-application-insight | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-application-insight) |
| terraform-azurerm-app-service-plan | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-app-service-plan) |
| terraform-azurerm-vnet | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-vnet) |
| terraform-azurerm-mssql | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-mssql) |
| terraform-azurerm-rbac | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-rbac) |
| terraform-terraform-workspace | terraform | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-terraform-workspace) |
| terraform-azurerm-application-gw | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-application-gw) |
| terraform-azurerm-windows-function-app | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-windows-function-app) |
| terraform-azurerm-linux-function-app | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-linux-function-app) |
| terraform-azurerm-datafactory | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-datafactory) |
| terraform-azurerm-virtual-network-peering | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-network-peering) |
| terraform-azurerm-user-assigned-identity | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-user-assigned-identity) |
| terraform-azurerm-cosmosdb | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-cosmosdb) |
| terraform-azurerm-nat-gateway | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-nat-gateway) |
| terraform-azurerm-container-instances | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-container-instances) |
| terraform-azurerm-cognitive-services | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-cognitive-services) |
| terraform-azurerm-search-service | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-search-service) |
| terraform-azurerm-api-mgmt-backend | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-api-mgmt-backend) |
| terraform-azurerm-policy-assignment | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-policy-assignment) |
| terraform-azurerm-synapse-workspace | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-synapse-workspace) |
| terraform-azurerm-automation-acc | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-automation-acc) |
| terraform-azurerm-windows-web-app | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-windows-web-app) |
| terraform-azurerm-linux-web-app | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-linux-web-app) |
| terraform-azurerm-virtual-network-gateway | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-network-gateway) |
| terraform-azurerm-disk-encryption-set | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-disk-encryption-set) |
| terraform-azurerm-private-dns-zones | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-private-dns-zones) |
| terraform-azurerm-private-dns-records | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-private-dns-records) |
| terraform-azurerm-policy-definition | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-policy-definition) |
| terraform-azurerm-shared-image-gallery | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-shared-image-gallery) |
| terraform-azurerm-virtual-desktop | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-desktop) |
| terraform-azurerm-avd-vm | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-avd-vm) |
| terraform-azurerm-pim | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-pim) |
| terraform-azurerm-eventhub | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-eventhub) |
| terraform-azuread-group | azuread | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azuread-group) |
| terraform-azurerm-lb | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-lb) |
| terraform-azurerm-api-mgmt-api | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-api-mgmt-api) |
| terraform-azurerm-api-mgmt-api-diagnostics | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-api-mgmt-api-diagnostics) |
| terraform-azurerm-virtual-machine-scale-set | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-virtual-machine-scale-set) |
| terraform-azurerm-app-configuration | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-app-configuration) |
| terraform-azurerm-monitor | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-monitor) |
| terraform-azurerm-postgresql | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-postgresql) |
| terraform-azurerm-network-watcher | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-network-watcher) |
| terraform-azurerm-cost | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-cost) |
| terraform-azurerm-ip-group | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-ip-group) |
| terraform-azurerm-container-app | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-container-app) |
| terraform-azurerm-managed-redis | azurerm | Cloud Team | ✅ No | [Link](https://github.com/Imperial-ICT-Cloud-TerraformRegistry/terraform-azurerm-managed-redis) |

### Miscellaneous Modules

Currently, there are no miscellaneous modules registered.

### Module Statistics

- **Total Modules**: 68
- **Cloud Team Modules**: 68
- **Miscellaneous Modules**: 0
- **Deprecated Modules**: 0
- **Providers**:
  - AzureRM: 65 modules
  - AzureAD: 1 module
  - Terraform: 2 modules

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.60.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_registry_module.ct_org_cloud_team_modules](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |
| [tfe_registry_module.ct_org_misc_modules](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |
| [tfe_registry_module.ic_org_cloud_team_modules](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |
| [tfe_registry_module.ic_org_misc_modules](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_team_modules"></a> [cloud\_team\_modules](#input\_cloud\_team\_modules) | List of GitHub repo paths (org/repo) for modules maintained by the ICT Cloud Team. | `list(string)` | n/a | yes |
| <a name="input_ct_org_name"></a> [ct\_org\_name](#input\_ct\_org\_name) | Name of the Cloud Team Terraform Cloud organisation. | `string` | n/a | yes |
| <a name="input_ct_org_registry_token"></a> [ct\_org\_registry\_token](#input\_ct\_org\_registry\_token) | VCS OAuth token (GitHub) for the Cloud Team TFC organisation registry. | `string` | n/a | yes |
| <a name="input_ic_org_name"></a> [ic\_org\_name](#input\_ic\_org\_name) | Name of the Imperial College Terraform Cloud organisation. | `string` | n/a | yes |
| <a name="input_ic_org_registry_token"></a> [ic\_org\_registry\_token](#input\_ic\_org\_registry\_token) | VCS OAuth token (GitHub) for the Imperial College TFC organisation registry. | `string` | n/a | yes |
| <a name="input_misc_modules"></a> [misc\_modules](#input\_misc\_modules) | List of GitHub repo paths (org/repo) for miscellaneous modules maintained by other teams. | `list(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
