resource "azurerm_storage_container" "storage-container" {
  count = 2
  name                  = "container-example-${count.index}"
  storage_account_name  = azurerm_storage_account.storage-account.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "storage-blob" {
  count = 2
  name                   = "storage-blob-example-${count.index}"
  storage_account_name   = azurerm_storage_account.storage-account.name
  storage_container_name = azurerm_storage_container.storage-container[count.index].name
  type                   = "Page"
  size                   = 1024

}
