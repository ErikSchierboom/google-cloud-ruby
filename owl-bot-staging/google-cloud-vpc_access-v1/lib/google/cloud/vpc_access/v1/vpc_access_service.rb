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

require "google/cloud/vpc_access/v1/version"

require "google/cloud/vpc_access/v1/vpc_access_service/credentials"
require "google/cloud/vpc_access/v1/vpc_access_service/paths"
require "google/cloud/vpc_access/v1/vpc_access_service/operations"
require "google/cloud/vpc_access/v1/vpc_access_service/client"

module Google
  module Cloud
    module VpcAccess
      module V1
        ##
        # Serverless VPC Access API allows users to create and manage connectors for
        # App Engine, Cloud Functions and Cloud Run to have internal connections to
        # Virtual Private Cloud networks.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/vpc_access/v1/vpc_access_service"
        #     client = ::Google::Cloud::VpcAccess::V1::VpcAccessService::Client.new
        #
        module VpcAccessService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "vpc_access_service", "helpers.rb"
require "google/cloud/vpc_access/v1/vpc_access_service/helpers" if ::File.file? helper_path
