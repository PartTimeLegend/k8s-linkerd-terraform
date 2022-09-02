output "cluster_name" {
  value = data.aws_eks_cluster.cluster.name
}

output "cert_expiry" {
  value = tls_locally_signed_cert.cert.validity_end_time
}
