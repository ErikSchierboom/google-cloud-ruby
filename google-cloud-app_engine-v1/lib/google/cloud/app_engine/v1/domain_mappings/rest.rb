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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/app_engine/v1/version"

require "google/cloud/app_engine/v1/domain_mappings/credentials"
require "google/cloud/app_engine/v1/domain_mappings/rest/operations"
require "google/cloud/app_engine/v1/domain_mappings/rest/client"

module Google
  module Cloud
    module AppEngine
      module V1
        ##
        # Manages domains serving an application.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/app_engine/v1/domain_mappings/rest"
        #     client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new
        #
        module DomainMappings
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/app_engine/v1/domain_mappings/rest/helpers" if ::File.file? helper_path
