terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    
  }
   backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstate6wmqh"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}

  subscription_id   = "899348c9-6239-401e-8c22-d2da9f5d9928"
  tenant_id         = "cfb543d7-afc3-4242-a07b-8fd548ce6633"
  client_id         = "33bc996d-b790-4528-80ad-b7056e77e582"
  client_secret     = "aI-8Q~5tKiJt5ldUbeaKq34XIoT2BtfK9EEIzcmu"
}
