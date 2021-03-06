variable "cluster_config_file" {
  type        = string
  description = "Cluster config file for Kubernetes cluster."
}

variable "releases_namespace" {
  type        = string
  description = "Name of the existing namespace where the Helm Releases will be deployed."
}

variable "cluster_ingress_hostname" {
  type        = string
  description = "Ingress hostname of the IKS cluster."
}

variable "cluster_type" {
  type        = string
  description = "The cluster type (openshift or ocp3 or ocp4 or kubernetes)"
}

variable "tool_config_maps" {
  type = list(string)
  description = "The list of config maps containing connectivity information for tools"
  default = []
}

variable "tls_secret_name" {
  type        = string
  description = "The name of the secret containing the tls certificate values"
  default     = ""
}

variable "image_tag" {
  type        = string
  description = "The image version tag to use"
  default     = "v1.4.4"
}

variable "chart_version" {
  type        = string
  description = "The helm chart version that should be installed from https://ibm-garage-cloud.github.io/toolkit-charts"
  default     = "1.0.0"
}

variable "enable_sso" {
  type        = bool
  description = "Flag indicating that ssl should be enabled (OpenShift only)"
  default     = true
}

variable "gitops_dir" {
  type        = string
  description = "Directory where the gitops repo content should be written"
  default     = ""
}

variable "mode" {
  type        = string
  description = "The mode of operation for the module (setup)"
  default     = ""
}
