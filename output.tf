output "resource-group" {
  value = azurerm_resource_group.resource-group.name
}

output "file-share-name" {
  value = azurerm_storage_share.storage-share.name
}

output "file-share-url" {
  value = azurerm_storage_share.storage-share.url
}
