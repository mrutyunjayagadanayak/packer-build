terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.26"
        }
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
