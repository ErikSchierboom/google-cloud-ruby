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
require "gapic/rest"
require "google/cloud/datacatalog/v1/policytagmanager_pb"
require "google/cloud/data_catalog/v1/policy_tag_manager/rest"


class ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_create_taxonomy
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    taxonomy = {}

    create_taxonomy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_create_taxonomy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_taxonomy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_taxonomy({ parent: parent, taxonomy: taxonomy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_taxonomy parent: parent, taxonomy: taxonomy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_taxonomy ::Google::Cloud::DataCatalog::V1::CreateTaxonomyRequest.new(parent: parent, taxonomy: taxonomy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_taxonomy({ parent: parent, taxonomy: taxonomy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_taxonomy(::Google::Cloud::DataCatalog::V1::CreateTaxonomyRequest.new(parent: parent, taxonomy: taxonomy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_taxonomy_client_stub.call_count
      end
    end
  end

  def test_delete_taxonomy
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_taxonomy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_delete_taxonomy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_taxonomy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_taxonomy({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_taxonomy name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_taxonomy ::Google::Cloud::DataCatalog::V1::DeleteTaxonomyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_taxonomy({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_taxonomy(::Google::Cloud::DataCatalog::V1::DeleteTaxonomyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_taxonomy_client_stub.call_count
      end
    end
  end

  def test_update_taxonomy
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    taxonomy = {}
    update_mask = {}

    update_taxonomy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_update_taxonomy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_taxonomy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_taxonomy({ taxonomy: taxonomy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_taxonomy taxonomy: taxonomy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_taxonomy ::Google::Cloud::DataCatalog::V1::UpdateTaxonomyRequest.new(taxonomy: taxonomy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_taxonomy({ taxonomy: taxonomy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_taxonomy(::Google::Cloud::DataCatalog::V1::UpdateTaxonomyRequest.new(taxonomy: taxonomy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_taxonomy_client_stub.call_count
      end
    end
  end

  def test_list_taxonomies
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::ListTaxonomiesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_taxonomies_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_list_taxonomies_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_taxonomies_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_taxonomies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_taxonomies parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_taxonomies ::Google::Cloud::DataCatalog::V1::ListTaxonomiesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_taxonomies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_taxonomies(::Google::Cloud::DataCatalog::V1::ListTaxonomiesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_taxonomies_client_stub.call_count
      end
    end
  end

  def test_get_taxonomy
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::Taxonomy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_taxonomy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_get_taxonomy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_taxonomy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_taxonomy({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_taxonomy name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_taxonomy ::Google::Cloud::DataCatalog::V1::GetTaxonomyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_taxonomy({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_taxonomy(::Google::Cloud::DataCatalog::V1::GetTaxonomyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_taxonomy_client_stub.call_count
      end
    end
  end

  def test_create_policy_tag
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    policy_tag = {}

    create_policy_tag_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_create_policy_tag_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_policy_tag_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_policy_tag({ parent: parent, policy_tag: policy_tag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_policy_tag parent: parent, policy_tag: policy_tag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_policy_tag ::Google::Cloud::DataCatalog::V1::CreatePolicyTagRequest.new(parent: parent, policy_tag: policy_tag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_policy_tag({ parent: parent, policy_tag: policy_tag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_policy_tag(::Google::Cloud::DataCatalog::V1::CreatePolicyTagRequest.new(parent: parent, policy_tag: policy_tag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_policy_tag_client_stub.call_count
      end
    end
  end

  def test_delete_policy_tag
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_policy_tag_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_delete_policy_tag_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_policy_tag_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_policy_tag({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_policy_tag name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_policy_tag ::Google::Cloud::DataCatalog::V1::DeletePolicyTagRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_policy_tag({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_policy_tag(::Google::Cloud::DataCatalog::V1::DeletePolicyTagRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_policy_tag_client_stub.call_count
      end
    end
  end

  def test_update_policy_tag
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    policy_tag = {}
    update_mask = {}

    update_policy_tag_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_update_policy_tag_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_policy_tag_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_policy_tag({ policy_tag: policy_tag, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_policy_tag policy_tag: policy_tag, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_policy_tag ::Google::Cloud::DataCatalog::V1::UpdatePolicyTagRequest.new(policy_tag: policy_tag, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_policy_tag({ policy_tag: policy_tag, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_policy_tag(::Google::Cloud::DataCatalog::V1::UpdatePolicyTagRequest.new(policy_tag: policy_tag, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_policy_tag_client_stub.call_count
      end
    end
  end

  def test_list_policy_tags
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::ListPolicyTagsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_policy_tags_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_list_policy_tags_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_policy_tags_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_policy_tags({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_policy_tags parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_policy_tags ::Google::Cloud::DataCatalog::V1::ListPolicyTagsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_policy_tags({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_policy_tags(::Google::Cloud::DataCatalog::V1::ListPolicyTagsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_policy_tags_client_stub.call_count
      end
    end
  end

  def test_get_policy_tag
    # Create test objects.
    client_result = ::Google::Cloud::DataCatalog::V1::PolicyTag.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_tag_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_get_policy_tag_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_policy_tag_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_policy_tag({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_policy_tag name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_policy_tag ::Google::Cloud::DataCatalog::V1::GetPolicyTagRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_policy_tag({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_policy_tag(::Google::Cloud::DataCatalog::V1::GetPolicyTagRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_policy_tag_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ resource: resource, options: options }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy resource: resource, options: options do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ resource: resource, options: options }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Iam::V1::TestIamPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ resource: resource, permissions: permissions }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions resource: resource, permissions: permissions do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ resource: resource, permissions: permissions }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Rest::Client::Configuration, config
  end
end
