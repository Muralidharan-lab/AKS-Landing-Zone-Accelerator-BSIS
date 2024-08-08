# Update the variables in the BACKEND block to refrence the
# storage account created out of band for TF statemanagement.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.44.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 2.34.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "k8s"   # Partial configuration, provided during "terraform init"
    storage_account_name = "k8stestbsi"   # Partial configuration, provided during "terraform init"
     container_name       = "k8stestbsi"   # Partial configuration, provided during "terraform init"
    key = "aad"
  }

}

provider "azurerm" {
  features {}
}

provider "azuread" {
}
