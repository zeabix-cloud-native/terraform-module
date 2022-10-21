variable "namespace" {
    description = "Namespace name to deploy istio, default is (istio-system)"
    type = string
    default = "istio-system"
}

variable "create_namespace" {
    description = "Do we need to create new namespace (default: true)"
    type = bool
    default = true  
}