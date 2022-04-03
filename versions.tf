# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

  
terraform {
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "backendcontainer"
    container_name       = "backend"
    key                  = "terraform.tfstate"
  }
}