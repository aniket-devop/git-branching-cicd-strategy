terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "centralindia"
}

locals {
  environment = "dev"
}

resource "azurerm_resource_group" "this" {
  name     = "rg-todo-ui-${local.environment}"
  location = var.location

  tags = {
    environment = local.environment
    managed_by  = "terraform"
  }
}

# TODO: add the virtual machine for this environment (dev-vm):
# network interface, virtual network and azurerm_linux_virtual_machine.
