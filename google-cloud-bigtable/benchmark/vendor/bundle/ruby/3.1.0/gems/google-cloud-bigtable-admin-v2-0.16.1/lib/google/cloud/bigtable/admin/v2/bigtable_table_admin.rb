# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/bigtable/admin/v2/version"

require "google/cloud/bigtable/admin/v2/bigtable_table_admin/credentials"
require "google/cloud/bigtable/admin/v2/bigtable_table_admin/paths"
require "google/cloud/bigtable/admin/v2/bigtable_table_admin/operations"
require "google/cloud/bigtable/admin/v2/bigtable_table_admin/client"

module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          ##
          # Service for creating, configuring, and deleting Cloud Bigtable tables.
          #
          #
          # Provides access to the table schemas only, not the data stored within
          # the tables.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/bigtable/admin/v2/bigtable_table_admin"
          #     client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new
          #
          module BigtableTableAdmin
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "bigtable_table_admin", "helpers.rb"
require "google/cloud/bigtable/admin/v2/bigtable_table_admin/helpers" if ::File.file? helper_path
