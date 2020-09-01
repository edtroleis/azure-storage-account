terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-eastus"
    storage_account_name = "cs210032000db81311a"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
