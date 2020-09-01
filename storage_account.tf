resource "azurerm_storage_account" "storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource-group.name
  location                 = azurerm_resource_group.resource-group.location
  account_kind             = "StorageV2"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  allow_blob_public_access = "true"

  # network_rules {
  #   default_action             = "Deny"
  #   ip_rules                   = ["100.0.0.1"]
  #   virtual_network_subnet_ids = [azurerm_subnet.subnet.id]
  # }

  tags = {
    "Owner"   = var.owner
    "Project" = var.project
  }
}
