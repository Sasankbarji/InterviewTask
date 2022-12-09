module "shell_execute" {
  source  = "github.com/matti/terraform-shell-resource"
  command = "kubectl get ingress -n airflow | awk '{print $4}'"
  depends_on = [
    kubernetes_ingress_v1.gke_ingress
  ]
}
