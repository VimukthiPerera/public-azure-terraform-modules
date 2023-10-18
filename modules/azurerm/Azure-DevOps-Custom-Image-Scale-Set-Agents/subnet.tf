# -------------------------------------------------------------------------------------
#
# Copyright (c) 2022, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 Inc. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

resource "azurerm_subnet" "scale_set_agent_subnet" {
  name                 = join("-", ["snet", local.scale_set_agents_application_name, var.padding])
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.subnet_address_prefixes
  service_endpoints    = var.service_endpoints
}

resource "azurerm_network_security_group" "scale_set_agent_subnet_nsg" {
  name                = join("-", ["nsg", var.project, local.scale_set_agents_application_name, var.environment, var.location, var.padding])
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
  security_rule {
    name                       = "BlockInbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "scale_set_agent_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.scale_set_agent_subnet.id
  network_security_group_id = azurerm_network_security_group.scale_set_agent_subnet_nsg.id
  depends_on                = [azurerm_subnet.scale_set_agent_subnet, azurerm_network_security_group.scale_set_agent_subnet_nsg]
}
