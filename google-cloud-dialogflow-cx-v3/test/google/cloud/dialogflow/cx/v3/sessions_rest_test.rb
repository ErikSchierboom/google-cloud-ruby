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
require "google/cloud/dialogflow/cx/v3/session_pb"
require "google/cloud/dialogflow/cx/v3/sessions/rest"


class ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::ClientTest < Minitest::Test
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

  def test_detect_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    session = "hello world"
    query_params = {}
    query_input = {}
    output_audio_config = {}

    detect_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::ServiceStub.stub :transcode_detect_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, detect_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.detect_intent({ session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.detect_intent session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.detect_intent ::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest.new(session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.detect_intent({ session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.detect_intent(::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest.new(session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, detect_intent_client_stub.call_count
      end
    end
  end

  def test_match_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    session = "hello world"
    query_params = {}
    query_input = {}
    persist_parameter_changes = true

    match_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::ServiceStub.stub :transcode_match_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, match_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.match_intent({ session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.match_intent session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.match_intent ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest.new(session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.match_intent({ session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.match_intent(::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest.new(session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, match_intent_client_stub.call_count
      end
    end
  end

  def test_fulfill_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    match_intent_request = {}
    match = {}
    output_audio_config = {}

    fulfill_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::ServiceStub.stub :transcode_fulfill_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, fulfill_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.fulfill_intent({ match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.fulfill_intent match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.fulfill_intent ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest.new(match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.fulfill_intent({ match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.fulfill_intent(::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest.new(match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, fulfill_intent_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client::Configuration, config
  end
end