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

output "sp_password_end_date" {
  value      = azuread_service_principal_password.service_principal_password.end_date
  depends_on = [azuread_service_principal_password.service_principal_password]
}

output "sp_password" {
  value      = azuread_service_principal_password.service_principal_password.value
  depends_on = [azuread_service_principal_password.service_principal_password]
}
