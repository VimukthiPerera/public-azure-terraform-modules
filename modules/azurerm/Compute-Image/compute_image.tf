# -------------------------------------------------------------------------------------
#
# Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

resource "azurerm_shared_image" "compute_image" {
  name                     = join("-", [var.shared_image_abbreviation, var.name])
  gallery_name             = var.gallery_name
  resource_group_name      = var.resource_group
  location                 = var.location
  os_type                  = var.shared_image_os_type
  hyper_v_generation       = var.hyper_v_generation
  trusted_launch_supported = var.trusted_launch_supported
  trusted_launch_enabled   = var.trusted_launch_enabled

  identifier {
    publisher = var.shared_image_publisher
    offer     = var.shared_image_offer
    sku       = var.shared_image_sku
  }
}
