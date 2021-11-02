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


module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        # Registered Api Key.
        # @!attribute [rw] api_key
        #   @return [::String]
        #     The API key.
        class PredictionApiKeyRegistration
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the `CreatePredictionApiKeyRegistration` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource path.
        #     `projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store`.
        # @!attribute [rw] prediction_api_key_registration
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistration]
        #     Required. The prediction API key registration.
        class CreatePredictionApiKeyRegistrationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the `ListPredictionApiKeyRegistrations`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent placement resource name such as
        #     `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of results to return per page. If unset, the
        #     service will choose a reasonable default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The previous `ListPredictionApiKeyRegistration.nextPageToken`.
        class ListPredictionApiKeyRegistrationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the `ListPredictionApiKeyRegistrations`.
        # @!attribute [rw] prediction_api_key_registrations
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistration>]
        #     The list of registered API keys.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If empty, the list is complete. If nonempty, pass the token to the next
        #     request's `ListPredictionApiKeysRegistrationsRequest.pageToken`.
        class ListPredictionApiKeyRegistrationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DeletePredictionApiKeyRegistration` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The API key to unregister including full resource path.
        #     `projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store/predictionApiKeyRegistrations/<YOUR_API_KEY>`
        class DeletePredictionApiKeyRegistrationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
