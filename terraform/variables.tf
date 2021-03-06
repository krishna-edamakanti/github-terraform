variable "rgname" {
  description = "Resource Group Name"
  default     = "ice_rg"
  type        = string
}
variable "location" {
  description = "Azure location"
  default     = "East US"
  type        = string
}
variable "sname" {
  description = "Azure Storage Account"
  type        = string
}
variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}
variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}
variable "node_resource_group" {
  type        = string
  description = "RG name for cluster resources in Azure"
}
variable "acr_name" {
  type        = string
  description = "ACR name in Azure"
}
