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
variable "project" {
  description = "The project in which this resource is deployed"
}
variable "environment" {
  description = "The environment of the project in which this resource is deployed"
}
variable "resource_group_name" {
  description = "(Required) The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created."
}
variable "location" {
  description = "(Required) The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created."
}
variable "default_tags" {
  default = "Tags associated with this resource."
}
variable "padding" {
  description = "Padding for this resource"
}
variable "application_name" {
  description = "The application name which should be used for this Event Grid System Topic"
}
variable "source_arm_resource_id" {
  description = "(Required) The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created."
}
variable "topic_type" {
  description = "(Required) The Topic Type of the Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created."
}
