terraform {
  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "storagdemo123"
    container_name       = "container1"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
module "AKS" {
  source              = "./modules/AKS"
  cluster_name        = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  rgname              = var.rgname
  node_resource_group = var.node_resource_group
  system_node_count   = var.system_node_count
}
