resource "aws_service_discovery_private_dns_namespace" "this" {
  count = var.create_private_dns_namespace ? 1 : 0
  name  = var.namespace_name
  vpc   = data.aws_vpc.selected.id
}

resource "aws_service_discovery_service" "this" {
  for_each    = var.service_names
  name        = each.value.name
  description = each.value.description
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.this[0].id
    dns_records {
      ttl  = 10
      type = "A"
    }
    dns_records {
      ttl  = 10
      type = "SRV"
    }
  }
  health_check_config {
    type              = "HTTP"
    resource_path     = "/"
    failure_threshold = 1
  }
}
