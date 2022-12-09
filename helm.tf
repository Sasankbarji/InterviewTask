resource "helm_release" "airflow" {
  repository       = "https://airflow.apache.org"
  chart            = "airflow"
  name             = "airflow"
  version          = "1.7.0"
  namespace        = "airflow"
  create_namespace = true
  values           = [file("${path.root}/airflow-values.yaml")]
  wait             = true
  max_history      = 3
  depends_on = [
    module.gke
  ]
}
