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

# [START dataproc_v1_generated_WorkflowTemplateService_UpdateWorkflowTemplate_sync]
require "google/cloud/dataproc/v1"

##
# Snippet for the update_workflow_template call in the WorkflowTemplateService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataproc::V1::WorkflowTemplateService::Client#update_workflow_template.
# It may require modification in order to execute successfully.
#
def update_workflow_template
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataproc::V1::WorkflowTemplateService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataproc::V1::UpdateWorkflowTemplateRequest.new

  # Call the update_workflow_template method.
  result = client.update_workflow_template request

  # The returned object is of type Google::Cloud::Dataproc::V1::WorkflowTemplate.
  p result
end
# [END dataproc_v1_generated_WorkflowTemplateService_UpdateWorkflowTemplate_sync]
