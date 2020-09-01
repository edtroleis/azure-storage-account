resource "azurerm_resource_group" "resource-group" {
  name     = var.resource_name
  location = var.location

  tags = {
    "Owner"   = var.owner
    "Project" = var.project
  }
}
