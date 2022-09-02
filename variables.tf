variable "tls_algorithm" {
  type        = string
  default     = "ECDSA"
  description = "The TLS Algorithm to use. Defaults to ECDSA."
}

variable "ecdsa_curve" {
  type        = string
  default     = "P256"
  description = "The ECDSA Curve to use. Defaults to P256."
}

variable "aws_region" {
  type        = string
  description = "Provide the AWS Region for your EKS instance."
}

variable "assume_role_arn" {
  type        = string
  description = "Provide the role to assume when performing this action."
}

variable "cluster_name" {
  type        = string
  description = "The name of your EKS cluster."
}

variable "validity_period_hours" {
  type        = number
  default     = 87600
  description = "Number of hours your certificate should be valid for. Defaults to 87600."
}

variable "is_ca_certificate" {
  type        = bool
  default     = true
  description = "Should this be a CA certificate? Default true."
}

variable "allowed_uses" {
  type = list(string)
  default = [
    "crl_signing",
    "cert_signing",
    "server_auth",
    "client_auth"
  ]
  description = "Allowed uses for certificate. Defaults to crl_signing, cert_signing, server_auth, and client_auth."
}

variable "common_name" {
  type        = string
  default     = "identity.linkerd.cluster.local"
  description = "Common name for the certificate. Defaults to identity.linkerd.cluster.local."
}
