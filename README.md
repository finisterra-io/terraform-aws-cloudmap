
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_service_discovery_private_dns_namespace.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_private_dns_namespace) | resource |
| [aws_service_discovery_service.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_service) | resource |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_private_dns_namespace"></a> [create\_private\_dns\_namespace](#input\_create\_private\_dns\_namespace) | Whether to create a private DNS namespace | `bool` | `true` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | The name of the namespace | `string` | n/a | yes |
| <a name="input_service_names"></a> [service\_names](#input\_service\_names) | The names of the services to create | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with the namespace | `map(string)` | `{}` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC where the namespace is associated | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->