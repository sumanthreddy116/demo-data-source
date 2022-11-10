data "azurerm_client_config" "current" {
  
}

provider "azurerm" {
    features {}
}

module "resource_group" {
    source = "../modules/rg_file"
    rg_name = var.rg_name
}

module "storage_account" {
    source = "../modules/st_file"
    depends_on = [module.resource_group]
    resource_group_name =module.resource_group.resource_group_name
}