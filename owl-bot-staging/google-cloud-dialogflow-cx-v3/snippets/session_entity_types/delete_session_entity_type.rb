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

# [START dialogflow_v3_generated_SessionEntityTypes_DeleteSessionEntityType_sync]
require "google/cloud/dialogflow/cx/v3"

##
# Snippet for the delete_session_entity_type call in the SessionEntityTypes service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#delete_session_entity_type.
# It may require modification in order to execute successfully.
#
def delete_session_entity_type
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dialogflow::CX::V3::DeleteSessionEntityTypeRequest.new

  # Call the delete_session_entity_type method.
  result = client.delete_session_entity_type request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END dialogflow_v3_generated_SessionEntityTypes_DeleteSessionEntityType_sync]
