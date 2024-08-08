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

  client_id       = "e07067bb-36bd-4d36-956c-aff6ff7e667e"
  client_secret   = "C1W8Q~1wFslIDlBdPS8No8F7SZ4m3EQDTP~FIauW"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  subscription_id = 849e76da-a85f-403f-81a2-04ea1a50b286
}


provider "azuread" {
}
