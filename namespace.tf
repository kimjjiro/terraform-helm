resource "kubernetes_namespace" "ns-test" {
  metadata {
    annotations = {
      name = "test"
    }
    name = "test"
  }
}