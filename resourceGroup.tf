terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.26"
        }
    }
    backend "azurerm" {
        resource_group_name  = "cloud-shell-storage-centralindia"
        storage_account_name = "csg1003200054b390c1"
        container_name       = "tfstate_packer_RG"
        key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg" {
    name = "myResourceGroup"
    location = "centralindia"
     tags = {
        Environment = "Temp"
        Team = "DevOps"
    }
}
