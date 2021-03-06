variable "aws_region" {
  default     = "ap-south-1"
  description = "AWS Region to deploy third API Gateway REST API"
  type        = string
}

variable "rest_api_domain_name" {
  default     = "third.com"
  description = "Domain name of the API Gateway REST API for self-signed TLS certificate"
  type        = string
}

variable "rest_api_name" {
  default     = "api-gateway-rest-api-openapi-third"
  description = "Name of the API Gateway REST API (can be used to trigger redeployments)"
  type        = string
}

variable "rest_api_path" {
  default     = "/path1"
  description = "Path to create in the API Gateway REST API (can be used to trigger redeployments)"
  type        = string
}
