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

variable "vault_access_tenant_id" {}
variable "vault_access_object_id" {}

variable "vault_access_secret_permissions" {
  type = list(string)
  default = []
}

variable "vault_access_certificate_permissions" {
  type = list(string)
  default = []
}

variable "vault_access_key_permissions" {
  type = list(string)
  default = []
}

variable "vault_access_storage_permissions" {
  type = list(string)
  default = []
}

variable "key_vault_id" {
  default = ""
}
