provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "istio" {
    source = "../modules/istio" 
}