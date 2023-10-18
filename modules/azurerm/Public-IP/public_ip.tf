# -------------------------------------------------------------------------------------
#
# Copyright (c) 2020, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 Inc. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

resource "azurerm_public_ip" "public_ip" {
  name                      = join("-", [ "pip", var.project, var.application_name, var.environment, var.location, var.padding])
  resource_group_name       = var.resource_group_name
  location                  = var.location
  allocation_method         = var.allocation_method
  ip_version                = var.ip_version
  sku                       = var.sku
  idle_timeout_in_minutes   = var.idle_timeout_in_minutes
  zones                     = [1,2,3]

  tags = var.default_tags
}
