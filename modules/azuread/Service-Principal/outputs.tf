# -------------------------------------------------------------------------------------
#
# Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

output "sp_internal_id" {
  value = azuread_service_principal.service_principal.id
}

output "sp_app_client_id" {
  value = azuread_service_principal.service_principal.client_id
}

output "sp_object_id" {
  value = azuread_service_principal.service_principal.object_id
}
