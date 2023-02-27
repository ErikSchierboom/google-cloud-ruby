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
require "google/cloud/texttospeech/v1/cloud_tts_pb"
require "google/cloud/text_to_speech/v1/text_to_speech/rest"


class ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::ClientTest < Minitest::Test
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

  def test_list_voices
    # Create test objects.
    client_result = ::Google::Cloud::TextToSpeech::V1::ListVoicesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    language_code = "hello world"

    list_voices_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::ServiceStub.stub :transcode_list_voices_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_voices_client_stub do
        # Create client
        client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_voices({ language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_voices language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_voices ::Google::Cloud::TextToSpeech::V1::ListVoicesRequest.new(language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_voices({ language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_voices(::Google::Cloud::TextToSpeech::V1::ListVoicesRequest.new(language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_voices_client_stub.call_count
      end
    end
  end

  def test_synthesize_speech
    # Create test objects.
    client_result = ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    input = {}
    voice = {}
    audio_config = {}

    synthesize_speech_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::ServiceStub.stub :transcode_synthesize_speech_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, synthesize_speech_client_stub do
        # Create client
        client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.synthesize_speech({ input: input, voice: voice, audio_config: audio_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.synthesize_speech input: input, voice: voice, audio_config: audio_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.synthesize_speech ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest.new(input: input, voice: voice, audio_config: audio_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.synthesize_speech({ input: input, voice: voice, audio_config: audio_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.synthesize_speech(::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest.new(input: input, voice: voice, audio_config: audio_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, synthesize_speech_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Rest::Client::Configuration, config
  end
end
