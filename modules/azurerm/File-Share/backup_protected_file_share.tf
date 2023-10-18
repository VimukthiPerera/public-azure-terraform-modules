# -------------------------------------------------------------------------------------
#
# Copyright (c) 2021, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 Inc. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

resource "azurerm_backup_protected_file_share" "backup_protected_file_share" {
  resource_group_name       = var.resource_group_name
  recovery_vault_name       = var.recovery_services_vault_name
  source_storage_account_id = var.backup_container_storage_account_id
  source_file_share_name    = azurerm_storage_share.storage_share.name
  backup_policy_id          = var.backup_policy_file_share_id
}
