# terraform-aws-eks-linkerd

Ultra light, ultra simple, ultra powerful. Linkerd adds security, observability, and reliability to Kubernetes, without the complexity. CNCF-hosted and 100% open source.

Use this module to install linkerd via terraform using the helm chart but generating all the keys needed for handling the helm chart.

```terrafrom
module "eks-linkerd" {
  source          = "PartTimeLegend/eks-linkerd/aws"
  aws_region      = "us-east-1"
  cluster_name    = "my-eks-cluster"
  assume_role_arn = "terraform-builder-role"
}
```
