resource "tls_private_key" "key" {
  count       = 2
  algorithm   = var.tls_algorithm
  ecdsa_curve = var.ecdsa_curve
}

resource "tls_self_signed_cert" "cert" {
  private_key_pem       = tls_private_key.key[0].private_key_pem
  validity_period_hours = var.validity_period_hours
  is_ca_certificate     = var.is_ca_certificate

  subject {
    common_name = var.common_name
  }

  allowed_uses = var.allowed_uses
}

resource "tls_cert_request" "issuer" {
  private_key_pem = tls_private_key.key[1].private_key_pem

  subject {
    common_name = var.common_name
  }
}

resource "tls_locally_signed_cert" "cert" {
  cert_request_pem      = tls_cert_request.issuer.cert_request_pem
  ca_private_key_pem    = tls_private_key.key[0].private_key_pem
  ca_cert_pem           = tls_self_signed_cert.cert.cert_pem
  validity_period_hours = var.validity_period_hours
  is_ca_certificate     = var.is_ca_certificate

  allowed_uses = var.allowed_uses
}
