variable "tls_algorithm" {
  type    = string
  default = "ECDSA"
}

variable "ecdsa_curve" {
  type = string
  default = "P256"
}

variable "aws_region" {
    type = string 
}

variable "assume_role_arn" {
    type = string
}

variable "cluster_name" {
  type = string
}

variable "validity_period_hours" {
  type = number
  default = 87600
}

variable "is_ca_certificate" {
  type = bool
  default = true
}

variable "allowed_uses" {
  type = list(string)
  default = [
    "crl_signing",
    "cert_signing",
    "server_auth",
    "client_auth"
    ]
}

variable "common_name" {
  type = string
  default = "identity.linkerd.cluster.local"
}
