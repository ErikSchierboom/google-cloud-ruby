# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/analytics/data/v1beta/version"

require "google/analytics/data/v1beta/analytics_data/credentials"
require "google/analytics/data/v1beta/analytics_data/paths"
require "google/analytics/data/v1beta/analytics_data/client"
require "google/analytics/data/v1beta/analytics_data/rest"

module Google
  module Analytics
    module Data
      module V1beta
        ##
        # Google Analytics reporting data service.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/analytics/data/v1beta/analytics_data"
        #     client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/analytics/data/v1beta/analytics_data/rest"
        #     client = ::Google::Analytics::Data::V1beta::AnalyticsData::Rest::Client.new
        #
        module AnalyticsData
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "analytics_data", "helpers.rb"
require "google/analytics/data/v1beta/analytics_data/helpers" if ::File.file? helper_path
