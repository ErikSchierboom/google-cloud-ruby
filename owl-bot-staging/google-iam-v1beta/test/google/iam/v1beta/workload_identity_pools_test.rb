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

require "google/iam/v1beta/workload_identity_pool_pb"
require "google/iam/v1beta/workload_identity_pool_services_pb"
require "google/iam/v1beta/workload_identity_pools"

class ::Google::Iam::V1beta::WorkloadIdentityPools::ClientTest < Minitest::Test
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

  def test_list_workload_identity_pools
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1beta::ListWorkloadIdentityPoolsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    show_deleted = true

    list_workload_identity_pools_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workload_identity_pools, name
      assert_kind_of ::Google::Iam::V1beta::ListWorkloadIdentityPoolsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal true, request["show_deleted"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workload_identity_pools_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workload_identity_pools({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workload_identity_pools parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workload_identity_pools ::Google::Iam::V1beta::ListWorkloadIdentityPoolsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workload_identity_pools({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workload_identity_pools(::Google::Iam::V1beta::ListWorkloadIdentityPoolsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workload_identity_pools_client_stub.call_rpc_count
    end
  end

  def test_get_workload_identity_pool
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1beta::WorkloadIdentityPool.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workload_identity_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workload_identity_pool, name
      assert_kind_of ::Google::Iam::V1beta::GetWorkloadIdentityPoolRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workload_identity_pool_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workload_identity_pool({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workload_identity_pool name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workload_identity_pool ::Google::Iam::V1beta::GetWorkloadIdentityPoolRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workload_identity_pool({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workload_identity_pool(::Google::Iam::V1beta::GetWorkloadIdentityPoolRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workload_identity_pool_client_stub.call_rpc_count
    end
  end

  def test_create_workload_identity_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    workload_identity_pool = {}
    workload_identity_pool_id = "hello world"

    create_workload_identity_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_workload_identity_pool, name
      assert_kind_of ::Google::Iam::V1beta::CreateWorkloadIdentityPoolRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1beta::WorkloadIdentityPool), request["workload_identity_pool"]
      assert_equal "hello world", request["workload_identity_pool_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_workload_identity_pool_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_workload_identity_pool({ parent: parent, workload_identity_pool: workload_identity_pool, workload_identity_pool_id: workload_identity_pool_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_workload_identity_pool parent: parent, workload_identity_pool: workload_identity_pool, workload_identity_pool_id: workload_identity_pool_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_workload_identity_pool ::Google::Iam::V1beta::CreateWorkloadIdentityPoolRequest.new(parent: parent, workload_identity_pool: workload_identity_pool, workload_identity_pool_id: workload_identity_pool_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_workload_identity_pool({ parent: parent, workload_identity_pool: workload_identity_pool, workload_identity_pool_id: workload_identity_pool_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_workload_identity_pool(::Google::Iam::V1beta::CreateWorkloadIdentityPoolRequest.new(parent: parent, workload_identity_pool: workload_identity_pool, workload_identity_pool_id: workload_identity_pool_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_workload_identity_pool_client_stub.call_rpc_count
    end
  end

  def test_update_workload_identity_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    workload_identity_pool = {}
    update_mask = {}

    update_workload_identity_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_workload_identity_pool, name
      assert_kind_of ::Google::Iam::V1beta::UpdateWorkloadIdentityPoolRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1beta::WorkloadIdentityPool), request["workload_identity_pool"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_workload_identity_pool_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_workload_identity_pool({ workload_identity_pool: workload_identity_pool, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_workload_identity_pool workload_identity_pool: workload_identity_pool, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_workload_identity_pool ::Google::Iam::V1beta::UpdateWorkloadIdentityPoolRequest.new(workload_identity_pool: workload_identity_pool, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_workload_identity_pool({ workload_identity_pool: workload_identity_pool, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_workload_identity_pool(::Google::Iam::V1beta::UpdateWorkloadIdentityPoolRequest.new(workload_identity_pool: workload_identity_pool, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_workload_identity_pool_client_stub.call_rpc_count
    end
  end

  def test_delete_workload_identity_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_workload_identity_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_workload_identity_pool, name
      assert_kind_of ::Google::Iam::V1beta::DeleteWorkloadIdentityPoolRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_workload_identity_pool_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_workload_identity_pool({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_workload_identity_pool name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_workload_identity_pool ::Google::Iam::V1beta::DeleteWorkloadIdentityPoolRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_workload_identity_pool({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_workload_identity_pool(::Google::Iam::V1beta::DeleteWorkloadIdentityPoolRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_workload_identity_pool_client_stub.call_rpc_count
    end
  end

  def test_undelete_workload_identity_pool
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    undelete_workload_identity_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :undelete_workload_identity_pool, name
      assert_kind_of ::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, undelete_workload_identity_pool_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.undelete_workload_identity_pool({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.undelete_workload_identity_pool name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.undelete_workload_identity_pool ::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.undelete_workload_identity_pool({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.undelete_workload_identity_pool(::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, undelete_workload_identity_pool_client_stub.call_rpc_count
    end
  end

  def test_list_workload_identity_pool_providers
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1beta::ListWorkloadIdentityPoolProvidersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    show_deleted = true

    list_workload_identity_pool_providers_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workload_identity_pool_providers, name
      assert_kind_of ::Google::Iam::V1beta::ListWorkloadIdentityPoolProvidersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal true, request["show_deleted"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workload_identity_pool_providers_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workload_identity_pool_providers({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workload_identity_pool_providers parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workload_identity_pool_providers ::Google::Iam::V1beta::ListWorkloadIdentityPoolProvidersRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workload_identity_pool_providers({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workload_identity_pool_providers(::Google::Iam::V1beta::ListWorkloadIdentityPoolProvidersRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workload_identity_pool_providers_client_stub.call_rpc_count
    end
  end

  def test_get_workload_identity_pool_provider
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1beta::WorkloadIdentityPoolProvider.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workload_identity_pool_provider_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workload_identity_pool_provider, name
      assert_kind_of ::Google::Iam::V1beta::GetWorkloadIdentityPoolProviderRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workload_identity_pool_provider_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workload_identity_pool_provider({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workload_identity_pool_provider name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workload_identity_pool_provider ::Google::Iam::V1beta::GetWorkloadIdentityPoolProviderRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workload_identity_pool_provider({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workload_identity_pool_provider(::Google::Iam::V1beta::GetWorkloadIdentityPoolProviderRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workload_identity_pool_provider_client_stub.call_rpc_count
    end
  end

  def test_create_workload_identity_pool_provider
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    workload_identity_pool_provider = {}
    workload_identity_pool_provider_id = "hello world"

    create_workload_identity_pool_provider_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_workload_identity_pool_provider, name
      assert_kind_of ::Google::Iam::V1beta::CreateWorkloadIdentityPoolProviderRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1beta::WorkloadIdentityPoolProvider), request["workload_identity_pool_provider"]
      assert_equal "hello world", request["workload_identity_pool_provider_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_workload_identity_pool_provider_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_workload_identity_pool_provider({ parent: parent, workload_identity_pool_provider: workload_identity_pool_provider, workload_identity_pool_provider_id: workload_identity_pool_provider_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_workload_identity_pool_provider parent: parent, workload_identity_pool_provider: workload_identity_pool_provider, workload_identity_pool_provider_id: workload_identity_pool_provider_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_workload_identity_pool_provider ::Google::Iam::V1beta::CreateWorkloadIdentityPoolProviderRequest.new(parent: parent, workload_identity_pool_provider: workload_identity_pool_provider, workload_identity_pool_provider_id: workload_identity_pool_provider_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_workload_identity_pool_provider({ parent: parent, workload_identity_pool_provider: workload_identity_pool_provider, workload_identity_pool_provider_id: workload_identity_pool_provider_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_workload_identity_pool_provider(::Google::Iam::V1beta::CreateWorkloadIdentityPoolProviderRequest.new(parent: parent, workload_identity_pool_provider: workload_identity_pool_provider, workload_identity_pool_provider_id: workload_identity_pool_provider_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_workload_identity_pool_provider_client_stub.call_rpc_count
    end
  end

  def test_update_workload_identity_pool_provider
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    workload_identity_pool_provider = {}
    update_mask = {}

    update_workload_identity_pool_provider_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_workload_identity_pool_provider, name
      assert_kind_of ::Google::Iam::V1beta::UpdateWorkloadIdentityPoolProviderRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1beta::WorkloadIdentityPoolProvider), request["workload_identity_pool_provider"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_workload_identity_pool_provider_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_workload_identity_pool_provider({ workload_identity_pool_provider: workload_identity_pool_provider, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_workload_identity_pool_provider workload_identity_pool_provider: workload_identity_pool_provider, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_workload_identity_pool_provider ::Google::Iam::V1beta::UpdateWorkloadIdentityPoolProviderRequest.new(workload_identity_pool_provider: workload_identity_pool_provider, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_workload_identity_pool_provider({ workload_identity_pool_provider: workload_identity_pool_provider, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_workload_identity_pool_provider(::Google::Iam::V1beta::UpdateWorkloadIdentityPoolProviderRequest.new(workload_identity_pool_provider: workload_identity_pool_provider, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_workload_identity_pool_provider_client_stub.call_rpc_count
    end
  end

  def test_delete_workload_identity_pool_provider
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_workload_identity_pool_provider_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_workload_identity_pool_provider, name
      assert_kind_of ::Google::Iam::V1beta::DeleteWorkloadIdentityPoolProviderRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_workload_identity_pool_provider_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_workload_identity_pool_provider({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_workload_identity_pool_provider name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_workload_identity_pool_provider ::Google::Iam::V1beta::DeleteWorkloadIdentityPoolProviderRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_workload_identity_pool_provider({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_workload_identity_pool_provider(::Google::Iam::V1beta::DeleteWorkloadIdentityPoolProviderRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_workload_identity_pool_provider_client_stub.call_rpc_count
    end
  end

  def test_undelete_workload_identity_pool_provider
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    undelete_workload_identity_pool_provider_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :undelete_workload_identity_pool_provider, name
      assert_kind_of ::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolProviderRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, undelete_workload_identity_pool_provider_client_stub do
      # Create client
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.undelete_workload_identity_pool_provider({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.undelete_workload_identity_pool_provider name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.undelete_workload_identity_pool_provider ::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolProviderRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.undelete_workload_identity_pool_provider({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.undelete_workload_identity_pool_provider(::Google::Iam::V1beta::UndeleteWorkloadIdentityPoolProviderRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, undelete_workload_identity_pool_provider_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Iam::V1beta::WorkloadIdentityPools::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Iam::V1beta::WorkloadIdentityPools::Operations, client.operations_client
  end
end
