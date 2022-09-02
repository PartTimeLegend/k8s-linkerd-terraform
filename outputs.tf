output "cluster_name" {
  value       = data.aws_eks_cluster.cluster.name
  description = "The EKS Cluster we deployed Linkerd to."
}

output "cert_expiry" {
  value       = tls_locally_signed_cert.cert.validity_end_time
  description = "The time that the certificate we generated expires."
}
