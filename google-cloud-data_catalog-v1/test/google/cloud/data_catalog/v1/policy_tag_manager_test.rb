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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/datacatalog/v1/policytagmanager_pb"
require "google/cloud/datacatalog/v1/policytagmanager_services_pb"
require "google/cloud/data_catalog/v1/policy_tag_manager"

class ::Google::Cloud::DataCatalog::V1::PolicyTagManager::ClientTest < Minitest::Test
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

  def test_create_taxonomy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    taxonomy = {}

    create_taxonomy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_taxonomy, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::CreateTaxonomyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataCatalog::V1::Taxonomy), request["taxonomy"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_taxonomy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_taxonomy({ parent: parent, taxonomy: taxonomy }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_taxonomy parent: parent, taxonomy: taxonomy do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_taxonomy ::Google::Cloud::DataCatalog::V1::CreateTaxonomyRequest.new(parent: parent, taxonomy: taxonomy) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_taxonomy({ parent: parent, taxonomy: taxonomy }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_taxonomy(::Google::Cloud::DataCatalog::V1::CreateTaxonomyRequest.new(parent: parent, taxonomy: taxonomy), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_taxonomy_client_stub.call_rpc_count
    end
  end

  def test_delete_taxonomy
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_taxonomy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_taxonomy, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::DeleteTaxonomyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_taxonomy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_taxonomy({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_taxonomy name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_taxonomy ::Google::Cloud::DataCatalog::V1::DeleteTaxonomyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_taxonomy({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_taxonomy(::Google::Cloud::DataCatalog::V1::DeleteTaxonomyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_taxonomy_client_stub.call_rpc_count
    end
  end

  def test_update_taxonomy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    taxonomy = {}
    update_mask = {}

    update_taxonomy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_taxonomy, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::UpdateTaxonomyRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataCatalog::V1::Taxonomy), request["taxonomy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_taxonomy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_taxonomy({ taxonomy: taxonomy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_taxonomy taxonomy: taxonomy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_taxonomy ::Google::Cloud::DataCatalog::V1::UpdateTaxonomyRequest.new(taxonomy: taxonomy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_taxonomy({ taxonomy: taxonomy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_taxonomy(::Google::Cloud::DataCatalog::V1::UpdateTaxonomyRequest.new(taxonomy: taxonomy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_taxonomy_client_stub.call_rpc_count
    end
  end

  def test_list_taxonomies
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::ListTaxonomiesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_taxonomies_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_taxonomies, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::ListTaxonomiesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_taxonomies_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_taxonomies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_taxonomies parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_taxonomies ::Google::Cloud::DataCatalog::V1::ListTaxonomiesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_taxonomies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_taxonomies(::Google::Cloud::DataCatalog::V1::ListTaxonomiesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_taxonomies_client_stub.call_rpc_count
    end
  end

  def test_get_taxonomy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_taxonomy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_taxonomy, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::GetTaxonomyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_taxonomy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_taxonomy({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_taxonomy name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_taxonomy ::Google::Cloud::DataCatalog::V1::GetTaxonomyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_taxonomy({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_taxonomy(::Google::Cloud::DataCatalog::V1::GetTaxonomyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_taxonomy_client_stub.call_rpc_count
    end
  end

  def test_create_policy_tag
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    policy_tag = {}

    create_policy_tag_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_policy_tag, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::CreatePolicyTagRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataCatalog::V1::PolicyTag), request["policy_tag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_policy_tag_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_policy_tag({ parent: parent, policy_tag: policy_tag }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_policy_tag parent: parent, policy_tag: policy_tag do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_policy_tag ::Google::Cloud::DataCatalog::V1::CreatePolicyTagRequest.new(parent: parent, policy_tag: policy_tag) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_policy_tag({ parent: parent, policy_tag: policy_tag }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_policy_tag(::Google::Cloud::DataCatalog::V1::CreatePolicyTagRequest.new(parent: parent, policy_tag: policy_tag), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_policy_tag_client_stub.call_rpc_count
    end
  end

  def test_delete_policy_tag
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_policy_tag_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_policy_tag, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::DeletePolicyTagRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_policy_tag_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_policy_tag({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_policy_tag name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_policy_tag ::Google::Cloud::DataCatalog::V1::DeletePolicyTagRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_policy_tag({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_policy_tag(::Google::Cloud::DataCatalog::V1::DeletePolicyTagRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_policy_tag_client_stub.call_rpc_count
    end
  end

  def test_update_policy_tag
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    policy_tag = {}
    update_mask = {}

    update_policy_tag_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_policy_tag, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::UpdatePolicyTagRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataCatalog::V1::PolicyTag), request["policy_tag"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_policy_tag_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_policy_tag({ policy_tag: policy_tag, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_policy_tag policy_tag: policy_tag, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_policy_tag ::Google::Cloud::DataCatalog::V1::UpdatePolicyTagRequest.new(policy_tag: policy_tag, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_policy_tag({ policy_tag: policy_tag, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_policy_tag(::Google::Cloud::DataCatalog::V1::UpdatePolicyTagRequest.new(policy_tag: policy_tag, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_policy_tag_client_stub.call_rpc_count
    end
  end

  def test_list_policy_tags
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::ListPolicyTagsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_policy_tags_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_policy_tags, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::ListPolicyTagsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_policy_tags_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_policy_tags({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_policy_tags parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_policy_tags ::Google::Cloud::DataCatalog::V1::ListPolicyTagsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_policy_tags({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_policy_tags(::Google::Cloud::DataCatalog::V1::ListPolicyTagsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_policy_tags_client_stub.call_rpc_count
    end
  end

  def test_get_policy_tag
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_tag_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_policy_tag, name
      assert_kind_of ::Google::Cloud::DataCatalog::V1::GetPolicyTagRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_policy_tag_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_policy_tag({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_policy_tag name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_policy_tag ::Google::Cloud::DataCatalog::V1::GetPolicyTagRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_policy_tag({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_policy_tag(::Google::Cloud::DataCatalog::V1::GetPolicyTagRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_policy_tag_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request["options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request["policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal ["hello world"], request["permissions"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client::Configuration, config
  end
end
