# terraform-module-gcp-network

A Terraform module to provide a VPC in Google Cloud Platform.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | The name of environment. | string | n/a | yes |
| ip\_cidr\_range | The range of internal addresses that are owned by this DEFAULT subnetwork. | string | n/a | yes |
| name | The name of network. | string | `"default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| network | The URI of the network. |

## Example

```hcl
module "network" {
  source = "git::ssh://git@github.com/andrzej-tests-1/terraform-module-gcp-network?ref=1.0.0"

  environment   = "${var.environment}"
  ip_cidr_range = "10.100.0.0/16"
}
```
