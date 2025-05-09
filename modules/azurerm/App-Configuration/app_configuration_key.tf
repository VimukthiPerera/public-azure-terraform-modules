# -------------------------------------------------------------------------------------
#
# Copyright (c) 2025, WSO2 LLC. (https://www.wso2.com) All Rights Reserved.
#
# WSO2 LLC. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#
# --------------------------------------------------------------------------------------

resource "azurerm_app_configuration_key" "app_configuration_key" {
  for_each               = var.configuration_keys
  configuration_store_id = azurerm_app_configuration.app_configuration.id
  key                    = each.value.key
  label                  = each.value.label
  content_type           = each.value.content_type
  value                  = each.value.value
  locked                 = each.value.locked
  type                   = each.value.type
  tags                   = each.value.tags
}
