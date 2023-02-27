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

# [START dataflow_v1beta3_generated_TemplatesService_CreateJobFromTemplate_sync]
require "google/cloud/dataflow/v1beta3"

##
# Snippet for the create_job_from_template call in the TemplatesService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataflow::V1beta3::TemplatesService::Client#create_job_from_template.
# It may require modification in order to execute successfully.
#
def create_job_from_template
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataflow::V1beta3::CreateJobFromTemplateRequest.new

  # Call the create_job_from_template method.
  result = client.create_job_from_template request

  # The returned object is of type Google::Cloud::Dataflow::V1beta3::Job.
  p result
end
# [END dataflow_v1beta3_generated_TemplatesService_CreateJobFromTemplate_sync]
