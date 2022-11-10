terraform {
  backend "azurerm" {
    resource_group_name  = "mainb"
    storage_account_name = "submain3"
    container_name       = "remoteconatiner"
    key                  = "prod.terraform.tfstate"
  }
}