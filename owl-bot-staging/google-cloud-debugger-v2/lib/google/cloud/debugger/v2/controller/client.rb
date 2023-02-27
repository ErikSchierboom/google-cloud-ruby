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
require "google/devtools/clouddebugger/v2/controller_pb"

module Google
  module Cloud
    module Debugger
      module V2
        module Controller
          ##
          # Client for the Controller service.
          #
          # The Controller service provides the API for orchestrating a collection of
          # debugger agents to perform debugging tasks. These agents are each attached
          # to a process of an application which may include one or more replicas.
          #
          # The debugger agents register with the Controller to identify the application
          # being debugged, the Debuggee. All agents that register with the same data,
          # represent the same Debuggee, and are assigned the same `debuggee_id`.
          #
          # The debugger agents call the Controller to retrieve  the list of active
          # Breakpoints. Agents with the same `debuggee_id` get the same breakpoints
          # list. An agent that can fulfill the breakpoint request updates the
          # Controller with the breakpoint result. The controller selects the first
          # result received and discards the rest of the results.
          # Agents that poll again for active breakpoints will no longer have
          # the completed breakpoint in the list and should remove that breakpoint from
          # their attached process.
          #
          # The Controller service does not provide a way to retrieve the results of
          # a completed breakpoint. This functionality is available using the Debugger
          # service.
          #
          class Client
            # @private
            attr_reader :controller_stub

            ##
            # Configure the Controller Client class.
            #
            # See {::Google::Cloud::Debugger::V2::Controller::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Controller clients
            #   ::Google::Cloud::Debugger::V2::Controller::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "Debugger", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.register_debuggee.timeout = 600.0

                default_config.rpcs.list_active_breakpoints.timeout = 600.0
                default_config.rpcs.list_active_breakpoints.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config.rpcs.update_active_breakpoint.timeout = 600.0
                default_config.rpcs.update_active_breakpoint.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Controller Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Debugger::V2::Controller::Client::Configuration}
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
            # Create a new Controller client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Debugger::V2::Controller::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Debugger::V2::Controller::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Controller client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/devtools/clouddebugger/v2/controller_services_pb"

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

              @controller_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Debugger::V2::Controller2::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Registers the debuggee with the controller service.
            #
            # All agents attached to the same application must call this method with
            # exactly the same request content to get back the same stable `debuggee_id`.
            # Agents should call this method again whenever `google.rpc.Code.NOT_FOUND`
            # is returned from any controller method.
            #
            # This protocol allows the controller service to disable debuggees, recover
            # from data loss, or change the `debuggee_id` format. Agents must handle
            # `debuggee_id` value changing upon re-registration.
            #
            # @overload register_debuggee(request, options = nil)
            #   Pass arguments to `register_debuggee` via a request object, either of type
            #   {::Google::Cloud::Debugger::V2::RegisterDebuggeeRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Debugger::V2::RegisterDebuggeeRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload register_debuggee(debuggee: nil)
            #   Pass arguments to `register_debuggee` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param debuggee [::Google::Cloud::Debugger::V2::Debuggee, ::Hash]
            #     Required. Debuggee information to register.
            #     The fields `project`, `uniquifier`, `description` and `agent_version`
            #     of the debuggee must be set.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Debugger::V2::RegisterDebuggeeResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Debugger::V2::RegisterDebuggeeResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/debugger/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Debugger::V2::Controller::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Debugger::V2::RegisterDebuggeeRequest.new
            #
            #   # Call the register_debuggee method.
            #   result = client.register_debuggee request
            #
            #   # The returned object is of type Google::Cloud::Debugger::V2::RegisterDebuggeeResponse.
            #   p result
            #
            def register_debuggee request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Debugger::V2::RegisterDebuggeeRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.register_debuggee.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Debugger::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.register_debuggee.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.register_debuggee.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @controller_stub.call_rpc :register_debuggee, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Returns the list of all active breakpoints for the debuggee.
            #
            # The breakpoint specification (`location`, `condition`, and `expressions`
            # fields) is semantically immutable, although the field values may
            # change. For example, an agent may update the location line number
            # to reflect the actual line where the breakpoint was set, but this
            # doesn't change the breakpoint semantics.
            #
            # This means that an agent does not need to check if a breakpoint has changed
            # when it encounters the same breakpoint on a successive call.
            # Moreover, an agent should remember the breakpoints that are completed
            # until the controller removes them from the active list to avoid
            # setting those breakpoints again.
            #
            # @overload list_active_breakpoints(request, options = nil)
            #   Pass arguments to `list_active_breakpoints` via a request object, either of type
            #   {::Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_active_breakpoints(debuggee_id: nil, wait_token: nil, success_on_timeout: nil)
            #   Pass arguments to `list_active_breakpoints` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param debuggee_id [::String]
            #     Required. Identifies the debuggee.
            #   @param wait_token [::String]
            #     A token that, if specified, blocks the method call until the list
            #     of active breakpoints has changed, or a server-selected timeout has
            #     expired. The value should be set from the `next_wait_token` field in
            #     the last response. The initial value should be set to `"init"`.
            #   @param success_on_timeout [::Boolean]
            #     If set to `true` (recommended), returns `google.rpc.Code.OK` status and
            #     sets the `wait_expired` response field to `true` when the server-selected
            #     timeout has expired.
            #
            #     If set to `false` (deprecated), returns `google.rpc.Code.ABORTED` status
            #     when the server-selected timeout has expired.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/debugger/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Debugger::V2::Controller::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest.new
            #
            #   # Call the list_active_breakpoints method.
            #   result = client.list_active_breakpoints request
            #
            #   # The returned object is of type Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse.
            #   p result
            #
            def list_active_breakpoints request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_active_breakpoints.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Debugger::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.debuggee_id
                header_params["debuggee_id"] = request.debuggee_id
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_active_breakpoints.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_active_breakpoints.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @controller_stub.call_rpc :list_active_breakpoints, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates the breakpoint state or mutable fields.
            # The entire Breakpoint message must be sent back to the controller service.
            #
            # Updates to active breakpoint fields are only allowed if the new value
            # does not change the breakpoint specification. Updates to the `location`,
            # `condition` and `expressions` fields should not alter the breakpoint
            # semantics. These may only make changes such as canonicalizing a value
            # or snapping the location to the correct line of code.
            #
            # @overload update_active_breakpoint(request, options = nil)
            #   Pass arguments to `update_active_breakpoint` via a request object, either of type
            #   {::Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_active_breakpoint(debuggee_id: nil, breakpoint: nil)
            #   Pass arguments to `update_active_breakpoint` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param debuggee_id [::String]
            #     Required. Identifies the debuggee being debugged.
            #   @param breakpoint [::Google::Cloud::Debugger::V2::Breakpoint, ::Hash]
            #     Required. Updated breakpoint information.
            #     The field `id` must be set.
            #     The agent must echo all Breakpoint specification fields in the update.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/debugger/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Debugger::V2::Controller::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest.new
            #
            #   # Call the update_active_breakpoint method.
            #   result = client.update_active_breakpoint request
            #
            #   # The returned object is of type Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse.
            #   p result
            #
            def update_active_breakpoint request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_active_breakpoint.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Debugger::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.debuggee_id
                header_params["debuggee_id"] = request.debuggee_id
              end
              if request.breakpoint&.id
                header_params["breakpoint.id"] = request.breakpoint.id
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_active_breakpoint.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_active_breakpoint.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @controller_stub.call_rpc :update_active_breakpoint, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Controller API.
            #
            # This class represents the configuration for Controller,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Debugger::V2::Controller::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # register_debuggee to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Debugger::V2::Controller::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.register_debuggee.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Debugger::V2::Controller::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.register_debuggee.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"clouddebugger.googleapis.com"`.
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

              config_attr :endpoint,      "clouddebugger.googleapis.com", ::String
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
              # Configuration RPC class for the Controller API.
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
                # RPC-specific configuration for `register_debuggee`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :register_debuggee
                ##
                # RPC-specific configuration for `list_active_breakpoints`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_active_breakpoints
                ##
                # RPC-specific configuration for `update_active_breakpoint`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_active_breakpoint

                # @private
                def initialize parent_rpcs = nil
                  register_debuggee_config = parent_rpcs.register_debuggee if parent_rpcs.respond_to? :register_debuggee
                  @register_debuggee = ::Gapic::Config::Method.new register_debuggee_config
                  list_active_breakpoints_config = parent_rpcs.list_active_breakpoints if parent_rpcs.respond_to? :list_active_breakpoints
                  @list_active_breakpoints = ::Gapic::Config::Method.new list_active_breakpoints_config
                  update_active_breakpoint_config = parent_rpcs.update_active_breakpoint if parent_rpcs.respond_to? :update_active_breakpoint
                  @update_active_breakpoint = ::Gapic::Config::Method.new update_active_breakpoint_config

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
