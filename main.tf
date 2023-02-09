resource "azurerm_virtual_network" "vnet" {
  address_space       = var.address_space
  location            = var.location
  name                = "vnet-${var.environment}-${var.workload_name}-${var.location}-${var.instance_number}"
  resource_group_name = var.resource_group_name
  subnet {
   name           = "snet-${var.workload_name}"
    address_prefix = var.subnet_prefix
    security_group = azurerm_network_security_group.nsg.id
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-${var.workload_name}-${var.instance_number}"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "${var.workload_name}-inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = var.destination_port
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}