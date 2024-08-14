/*
 * Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
 *
 * WSO2 LLC. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

variable "api_operation_abbreviation" {
  description = "Abbreviation for the API operation"
  type        = string
  default     = "api-op"
}

variable "api_operation_id" {
  description = "A unique identifier for the API operation"
  type        = string
}

variable "api_name" {
  description = "Name of the API where this API Operation should be created"
  type        = string
}

variable "primary_api_management_name" {
  description = "Name of the Primary API Management Service where the API exists"
  type        = string
}

variable "secondary_api_management_name" {
  description = "Name of the Secondary API Management Service where the API exists"
  type        = string
}

variable "resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists."
  type        = string
}

variable "display_name" {
  description = "Display name of the API operation"
  type        = string
}

variable "methods" {
  description = "HTTP method used for the API operation"
  type        = set(string)
}

variable "url_template" {
  description = "URL template for the API operation, which may include parameters"
  type        = string
}

variable "template_parameters" {
  description = "Template parameters for the API operation"
  type = list(object({
    name        = string
    type        = string
    required    = bool
    description = string
  }))
  default = []
}

variable "default_policy_object" {
  description = "Map of default to policy template path and variables"
  type = any
}

variable "method_specific_policy_map" {
  description = "Map of method to policy map"
  type = any
  default = {}
}
