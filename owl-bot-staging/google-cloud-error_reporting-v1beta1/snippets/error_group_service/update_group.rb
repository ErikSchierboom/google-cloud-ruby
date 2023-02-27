# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START clouderrorreporting_v1beta1_generated_ErrorGroupService_UpdateGroup_sync]
require "google/cloud/error_reporting/v1beta1"

##
# Snippet for the update_group call in the ErrorGroupService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client#update_group.
# It may require modification in order to execute successfully.
#
def update_group
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ErrorReporting::V1beta1::UpdateGroupRequest.new

  # Call the update_group method.
  result = client.update_group request

  # The returned object is of type Google::Cloud::ErrorReporting::V1beta1::ErrorGroup.
  p result
end
# [END clouderrorreporting_v1beta1_generated_ErrorGroupService_UpdateGroup_sync]
