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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/talent/v4beta1/event_service_pb"
require "google/cloud/talent/v4beta1/event_service_services_pb"
require "google/cloud/talent/v4beta1/event_service"

class ::Google::Cloud::Talent::V4beta1::EventService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_client_event
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Talent::V4beta1::ClientEvent.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    client_event = {}

    create_client_event_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_client_event, name
      assert_kind_of ::Google::Cloud::Talent::V4beta1::CreateClientEventRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Talent::V4beta1::ClientEvent), request["client_event"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_client_event_client_stub do
      # Create client
      client = ::Google::Cloud::Talent::V4beta1::EventService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_client_event({ parent: parent, client_event: client_event }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_client_event parent: parent, client_event: client_event do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_client_event ::Google::Cloud::Talent::V4beta1::CreateClientEventRequest.new(parent: parent, client_event: client_event) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_client_event({ parent: parent, client_event: client_event }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_client_event(::Google::Cloud::Talent::V4beta1::CreateClientEventRequest.new(parent: parent, client_event: client_event), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_client_event_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Talent::V4beta1::EventService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Talent::V4beta1::EventService::Client::Configuration, config
  end
end
