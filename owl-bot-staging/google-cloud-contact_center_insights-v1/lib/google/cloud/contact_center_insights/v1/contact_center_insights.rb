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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/contact_center_insights/v1/version"

require "google/cloud/contact_center_insights/v1/contact_center_insights/credentials"
require "google/cloud/contact_center_insights/v1/contact_center_insights/paths"
require "google/cloud/contact_center_insights/v1/contact_center_insights/operations"
require "google/cloud/contact_center_insights/v1/contact_center_insights/client"

module Google
  module Cloud
    module ContactCenterInsights
      module V1
        ##
        # An API that lets users analyze and explore their business conversation data.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/contact_center_insights/v1/contact_center_insights"
        #     client = ::Google::Cloud::ContactCenterInsights::V1::ContactCenterInsights::Client.new
        #
        module ContactCenterInsights
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "contact_center_insights", "helpers.rb"
require "google/cloud/contact_center_insights/v1/contact_center_insights/helpers" if ::File.file? helper_path
