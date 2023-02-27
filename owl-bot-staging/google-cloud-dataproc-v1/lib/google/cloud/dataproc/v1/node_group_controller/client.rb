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

require "google/cloud/errors"
require "google/cloud/dataproc/v1/node_groups_pb"
require "google/iam/v1"

module Google
  module Cloud
    module Dataproc
      module V1
        module NodeGroupController
          ##
          # Client for the NodeGroupController service.
          #
          # The `NodeGroupControllerService` provides methods to manage node groups
          # of Compute Engine managed instances.
          #
          class Client
            include Paths

            # @private
            attr_reader :node_group_controller_stub

            ##
            # Configure the NodeGroupController Client class.
            #
            # See {::Google::Cloud::Dataproc::V1::NodeGroupController::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all NodeGroupController clients
            #   ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Dataproc", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the NodeGroupController Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Dataproc::V1::NodeGroupController::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new NodeGroupController client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the NodeGroupController client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/dataproc/v1/node_groups_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @iam_policy_client = Google::Iam::V1::IAMPolicy::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @node_group_controller_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Dataproc::V1::NodeGroupController::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::Dataproc::V1::NodeGroupController::Operations]
            #
            attr_reader :operations_client

            ##
            # Get the associated client for mix-in of the IAMPolicy.
            #
            # @return [Google::Iam::V1::IAMPolicy::Client]
            #
            attr_reader :iam_policy_client

            # Service calls

            ##
            # Creates a node group in a cluster. The returned
            # {::Google::Longrunning::Operation#metadata Operation.metadata} is
            # [NodeGroupOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
            #
            # @overload create_node_group(request, options = nil)
            #   Pass arguments to `create_node_group` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1::CreateNodeGroupRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1::CreateNodeGroupRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_node_group(parent: nil, node_group: nil, node_group_id: nil, request_id: nil)
            #   Pass arguments to `create_node_group` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent resource where this node group will be created.
            #     Format: `projects/{project}/regions/{region}/clusters/{cluster}`
            #   @param node_group [::Google::Cloud::Dataproc::V1::NodeGroup, ::Hash]
            #     Required. The node group to create.
            #   @param node_group_id [::String]
            #     Optional. An optional node group ID. Generated if not specified.
            #
            #     The ID must contain only letters (a-z, A-Z), numbers (0-9),
            #     underscores (_), and hyphens (-). Cannot begin or end with underscore
            #     or hyphen. Must consist of from 3 to 33 characters.
            #   @param request_id [::String]
            #     Optional. A unique ID used to identify the request. If the server receives
            #     two
            #     [CreateNodeGroupRequest](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests)
            #     with the same ID, the second request is ignored and the
            #     first {::Google::Longrunning::Operation google.longrunning.Operation} created
            #     and stored in the backend is returned.
            #
            #     Recommendation: Set this value to a
            #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
            #
            #     The ID must contain only letters (a-z, A-Z), numbers (0-9),
            #     underscores (_), and hyphens (-). The maximum length is 40 characters.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataproc/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataproc::V1::NodeGroupController::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataproc::V1::CreateNodeGroupRequest.new
            #
            #   # Call the create_node_group method.
            #   result = client.create_node_group request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def create_node_group request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::CreateNodeGroupRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_node_group.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_node_group.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_node_group.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @node_group_controller_stub.call_rpc :create_node_group, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Resizes a node group in a cluster. The returned
            # {::Google::Longrunning::Operation#metadata Operation.metadata} is
            # [NodeGroupOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
            #
            # @overload resize_node_group(request, options = nil)
            #   Pass arguments to `resize_node_group` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1::ResizeNodeGroupRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1::ResizeNodeGroupRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload resize_node_group(name: nil, size: nil, request_id: nil, graceful_decommission_timeout: nil)
            #   Pass arguments to `resize_node_group` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the node group to resize.
            #     Format:
            #     `projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}`
            #   @param size [::Integer]
            #     Required. The number of running instances for the node group to maintain.
            #     The group adds or removes instances to maintain the number of instances
            #     specified by this parameter.
            #   @param request_id [::String]
            #     Optional. A unique ID used to identify the request. If the server receives
            #     two
            #     [ResizeNodeGroupRequest](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.ResizeNodeGroupRequests)
            #     with the same ID, the second request is ignored and the
            #     first {::Google::Longrunning::Operation google.longrunning.Operation} created
            #     and stored in the backend is returned.
            #
            #     Recommendation: Set this value to a
            #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
            #
            #     The ID must contain only letters (a-z, A-Z), numbers (0-9),
            #     underscores (_), and hyphens (-). The maximum length is 40 characters.
            #   @param graceful_decommission_timeout [::Google::Protobuf::Duration, ::Hash]
            #     Optional. Timeout for graceful YARN decomissioning. [Graceful
            #     decommissioning]
            #     (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/scaling-clusters#graceful_decommissioning)
            #     allows the removal of nodes from the Compute Engine node group
            #     without interrupting jobs in progress. This timeout specifies how long to
            #     wait for jobs in progress to finish before forcefully removing nodes (and
            #     potentially interrupting jobs). Default timeout is 0 (for forceful
            #     decommission), and the maximum allowed timeout is 1 day. (see JSON
            #     representation of
            #     [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)).
            #
            #     Only supported on Dataproc image versions 1.2 and higher.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataproc/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataproc::V1::NodeGroupController::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataproc::V1::ResizeNodeGroupRequest.new
            #
            #   # Call the resize_node_group method.
            #   result = client.resize_node_group request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def resize_node_group request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::ResizeNodeGroupRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.resize_node_group.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.resize_node_group.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.resize_node_group.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @node_group_controller_stub.call_rpc :resize_node_group, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets the resource representation for a node group in a
            # cluster.
            #
            # @overload get_node_group(request, options = nil)
            #   Pass arguments to `get_node_group` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1::GetNodeGroupRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1::GetNodeGroupRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_node_group(name: nil)
            #   Pass arguments to `get_node_group` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the node group to retrieve.
            #     Format:
            #     `projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}`
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataproc::V1::NodeGroup]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataproc::V1::NodeGroup]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataproc/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataproc::V1::NodeGroupController::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataproc::V1::GetNodeGroupRequest.new
            #
            #   # Call the get_node_group method.
            #   result = client.get_node_group request
            #
            #   # The returned object is of type Google::Cloud::Dataproc::V1::NodeGroup.
            #   p result
            #
            def get_node_group request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::GetNodeGroupRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_node_group.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_node_group.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_node_group.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @node_group_controller_stub.call_rpc :get_node_group, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the NodeGroupController API.
            #
            # This class represents the configuration for NodeGroupController,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Dataproc::V1::NodeGroupController::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # create_node_group to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_node_group.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Dataproc::V1::NodeGroupController::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_node_group.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"dataproc.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "dataproc.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the NodeGroupController API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_node_group`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_node_group
                ##
                # RPC-specific configuration for `resize_node_group`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :resize_node_group
                ##
                # RPC-specific configuration for `get_node_group`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_node_group

                # @private
                def initialize parent_rpcs = nil
                  create_node_group_config = parent_rpcs.create_node_group if parent_rpcs.respond_to? :create_node_group
                  @create_node_group = ::Gapic::Config::Method.new create_node_group_config
                  resize_node_group_config = parent_rpcs.resize_node_group if parent_rpcs.respond_to? :resize_node_group
                  @resize_node_group = ::Gapic::Config::Method.new resize_node_group_config
                  get_node_group_config = parent_rpcs.get_node_group if parent_rpcs.respond_to? :get_node_group
                  @get_node_group = ::Gapic::Config::Method.new get_node_group_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
