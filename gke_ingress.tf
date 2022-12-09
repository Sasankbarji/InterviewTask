resource "kubernetes_ingress_v1" "gke_ingress" {
  metadata {
    name      = "gke-ingress"
    namespace = "airflow"
  }

  spec {
    default_backend {
      service {
        name = "airflow-webserver"
        port {
          number = 8080
        }
      }
    }
  }
  depends_on = [
    helm_release.airflow
  ]
}
