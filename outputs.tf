output "id" {
  description = "The ID of the private DNS namespace"
  value       = aws_service_discovery_private_dns_namespace.this[0].id
}
