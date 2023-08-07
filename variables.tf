variable "namespace_name" {
  description = "The name of the namespace"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC where the namespace is associated"
  type        = string
}

variable "service_names" {
  description = "The names of the services to create"
  type        = map(any)
}
