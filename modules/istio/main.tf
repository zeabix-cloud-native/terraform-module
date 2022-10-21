resource "helm_release" "istio_base" {
  name = "istio-base"
  repository = local.repository
  chart = local.base_chart
  namespace = var.namespace
  create_namespace = var.create_namespace
}

resource "helm_release" "istiod" {
    depends_on = [
      helm_release.istio_base
    ]

    name = "istiod"
    repository = local.repository
    chart = local.istiod_chart
    namespace = var.namespace
    create_namespace = false
  
}