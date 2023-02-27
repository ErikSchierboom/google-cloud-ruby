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

# [START dlp_v2_generated_DlpService_ListInfoTypes_sync]
require "google/cloud/dlp/v2"

##
# Snippet for the list_info_types call in the DlpService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dlp::V2::DlpService::Client#list_info_types. It may require
# modification in order to execute successfully.
#
def list_info_types
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dlp::V2::DlpService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dlp::V2::ListInfoTypesRequest.new

  # Call the list_info_types method.
  result = client.list_info_types request

  # The returned object is of type Google::Cloud::Dlp::V2::ListInfoTypesResponse.
  p result
end
# [END dlp_v2_generated_DlpService_ListInfoTypes_sync]
