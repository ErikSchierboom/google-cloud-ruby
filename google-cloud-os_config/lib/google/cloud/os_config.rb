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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/os_config/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :os_config do |config|
  config.add_field! :endpoint,      "osconfig.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module OsConfig
      ##
      # Create a new client object for OsConfigService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::OsConfig::V1::OsConfigService::Client](https://googleapis.dev/ruby/google-cloud-os_config-v1/latest/Google/Cloud/OsConfig/V1/OsConfigService/Client.html)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the OsConfigService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About OsConfigService
      #
      # OS Config API
      #
      # The OS Config service is a server-side component that you can use to
      # manage package installations and patch jobs for virtual machine instances.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.os_config_service version: :v1, transport: :grpc, &block
        require "google/cloud/os_config/#{version.to_s.downcase}"

        package_name = Google::Cloud::OsConfig
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::OsConfig.const_get(package_name).const_get(:OsConfigService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for OsConfigZonalService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::OsConfig::V1::OsConfigZonalService::Client](https://googleapis.dev/ruby/google-cloud-os_config-v1/latest/Google/Cloud/OsConfig/V1/OsConfigZonalService/Client.html)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the OsConfigZonalService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About OsConfigZonalService
      #
      # Zonal OS Config API
      #
      # The OS Config service is the server-side component that allows users to
      # manage package installations and patch jobs for Compute Engine VM instances.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.os_config_zonal_service version: :v1, transport: :grpc, &block
        require "google/cloud/os_config/#{version.to_s.downcase}"

        package_name = Google::Cloud::OsConfig
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::OsConfig.const_get(package_name).const_get(:OsConfigZonalService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-os_config library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.os_config if block_given?

        ::Google::Cloud.configure.os_config
      end
    end
  end
end

helper_path = ::File.join __dir__, "os_config", "helpers.rb"
require "google/cloud/os_config/helpers" if ::File.file? helper_path
