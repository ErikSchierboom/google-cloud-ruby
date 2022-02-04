# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/monitoring/v3/alert_policy_service"
require "google/cloud/monitoring/v3/group_service"
require "google/cloud/monitoring/v3/metric_service"
require "google/cloud/monitoring/v3/notification_channel_service"
require "google/cloud/monitoring/v3/query_service"
require "google/cloud/monitoring/v3/service_monitoring_service"
require "google/cloud/monitoring/v3/uptime_check_service"
require "google/cloud/monitoring/v3/version"

module Google
  module Cloud
    module Monitoring
      ##
      # To load this package, including all its services, and instantiate a client:
      #
      #     require "google/cloud/monitoring/v3"
      #     client = ::Google::Cloud::Monitoring::V3::AlertPolicyService::Client.new
      #
      module V3
      end
    end
  end
end

helper_path = ::File.join __dir__, "v3", "_helpers.rb"
require "google/cloud/monitoring/v3/_helpers" if ::File.file? helper_path
