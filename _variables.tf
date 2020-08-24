# Resource Group
variable "location" {
  description = "Location where the resources will be created"
  type        = string
}

variable "resource_name" {
  description = "Name of the resource group"
  type        = string
}

# Storage account properties
variable "storage_account_name" {
  description = "Name of storage account. Must be unique in Azure"
  type        = string
}

variable "account_tier" {
  description = ""
  type        = string
}

variable "account_replication_type" {
  description = "Define the redundency storage type"
  type        = string
}

variable "access_tier" {
  description = "Define if backup will be in Hot or Cold mode"
  type        = string
}


# Tags
variable "owner" {
  description = "Owner"
  type        = string
}

variable "project" {
  description = "Project description"
  type        = string
}

