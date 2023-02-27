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


module Google
  module Cloud
    module Eventarc
      module V1
        # The request message for the GetTrigger method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the trigger to get.
        class GetTriggerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the ListTriggers method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection to list triggers on.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of triggers to return on each page.
        #
        #     Note: The service may send fewer.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The page token; provide the value from the `next_page_token` field in a
        #     previous `ListTriggers` call to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListTriggers` must match
        #     the call that provided the page token.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The sorting order of the resources returned. Value should be a
        #     comma-separated list of fields. The default sorting order is ascending. To
        #     specify descending order for a field, append a `desc` suffix; for example:
        #     `name desc, trigger_id`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter field. Used to filter the Triggers to be listed. Possible filters
        #     are described in https://google.aip.dev/160. For example, using
        #     "?filter=destination:gke" would list only Triggers with a gke destination.
        class ListTriggersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for the `ListTriggers` method.
        # @!attribute [rw] triggers
        #   @return [::Array<::Google::Cloud::Eventarc::V1::Trigger>]
        #     The requested triggers, up to the number specified in `page_size`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A page token that can be sent to `ListTriggers` to request the next page.
        #     If this is empty, then there are no more pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unreachable resources, if any.
        class ListTriggersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the CreateTrigger method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection in which to add this trigger.
        # @!attribute [rw] trigger
        #   @return [::Google::Cloud::Eventarc::V1::Trigger]
        #     Required. The trigger to create.
        # @!attribute [rw] trigger_id
        #   @return [::String]
        #     Required. The user-provided ID to be assigned to the trigger.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class CreateTriggerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the UpdateTrigger method.
        # @!attribute [rw] trigger
        #   @return [::Google::Cloud::Eventarc::V1::Trigger]
        #     The trigger to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The fields to be updated; only fields explicitly provided are updated.
        #     If no field mask is provided, all provided fields in the request are
        #     updated. To update all fields, provide a field mask of "*".
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the trigger is not found, a new trigger will be
        #     created. In this situation, `update_mask` is ignored.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class UpdateTriggerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the DeleteTrigger method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the trigger to be deleted.
        # @!attribute [rw] etag
        #   @return [::String]
        #     If provided, the trigger will only be deleted if the etag matches the
        #     current etag on the resource.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the trigger is not found, the request will succeed
        #     but no action will be taken on the server.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class DeleteTriggerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the GetChannel method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the channel to get.
        class GetChannelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the ListChannels method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection to list channels on.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of channels to return on each page.
        #
        #     Note: The service may send fewer.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The page token; provide the value from the `next_page_token` field in a
        #     previous `ListChannels` call to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListChannels` must
        #     match the call that provided the page token.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The sorting order of the resources returned. Value should be a
        #     comma-separated list of fields. The default sorting order is ascending. To
        #     specify descending order for a field, append a `desc` suffix; for example:
        #     `name desc, channel_id`.
        class ListChannelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for the `ListChannels` method.
        # @!attribute [rw] channels
        #   @return [::Array<::Google::Cloud::Eventarc::V1::Channel>]
        #     The requested channels, up to the number specified in `page_size`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A page token that can be sent to `ListChannels` to request the next page.
        #     If this is empty, then there are no more pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unreachable resources, if any.
        class ListChannelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the CreateChannel method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection in which to add this channel.
        # @!attribute [rw] channel
        #   @return [::Google::Cloud::Eventarc::V1::Channel]
        #     Required. The channel to create.
        # @!attribute [rw] channel_id
        #   @return [::String]
        #     Required. The user-provided ID to be assigned to the channel.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class CreateChannelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the UpdateChannel method.
        # @!attribute [rw] channel
        #   @return [::Google::Cloud::Eventarc::V1::Channel]
        #     The channel to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The fields to be updated; only fields explicitly provided are updated.
        #     If no field mask is provided, all provided fields in the request are
        #     updated. To update all fields, provide a field mask of "*".
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class UpdateChannelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the DeleteChannel method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the channel to be deleted.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Required. If set, validate the request and preview the review, but do not
        #     post it.
        class DeleteChannelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the GetProvider method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the provider to get.
        class GetProviderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the ListProviders method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of the provider to get.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of providers to return on each page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The page token; provide the value from the `next_page_token` field in a
        #     previous `ListProviders` call to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListProviders` must
        #     match the call that provided the page token.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The sorting order of the resources returned. Value should be a
        #     comma-separated list of fields. The default sorting oder is ascending. To
        #     specify descending order for a field, append a `desc` suffix; for example:
        #     `name desc, _id`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     The filter field that the list request will filter on.
        class ListProvidersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for the `ListProviders` method.
        # @!attribute [rw] providers
        #   @return [::Array<::Google::Cloud::Eventarc::V1::Provider>]
        #     The requested providers, up to the number specified in `page_size`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A page token that can be sent to `ListProviders` to request the next page.
        #     If this is empty, then there are no more pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unreachable resources, if any.
        class ListProvidersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the GetChannelConnection method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the channel connection to get.
        class GetChannelConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the ListChannelConnections method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection from which to list channel connections.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of channel connections to return on each page.
        #
        #     Note: The service may send fewer responses.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The page token; provide the value from the `next_page_token` field in a
        #     previous `ListChannelConnections` call to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListChannelConnetions`
        #     match the call that provided the page token.
        class ListChannelConnectionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for the `ListChannelConnections` method.
        # @!attribute [rw] channel_connections
        #   @return [::Array<::Google::Cloud::Eventarc::V1::ChannelConnection>]
        #     The requested channel connections, up to the number specified in
        #     `page_size`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A page token that can be sent to `ListChannelConnections` to request the
        #     next page.
        #     If this is empty, then there are no more pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unreachable resources, if any.
        class ListChannelConnectionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the CreateChannelConnection method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent collection in which to add this channel connection.
        # @!attribute [rw] channel_connection
        #   @return [::Google::Cloud::Eventarc::V1::ChannelConnection]
        #     Required. Channel connection to create.
        # @!attribute [rw] channel_connection_id
        #   @return [::String]
        #     Required. The user-provided ID to be assigned to the channel connection.
        class CreateChannelConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the DeleteChannelConnection method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the channel connection to delete.
        class DeleteChannelConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the UpdateGoogleChannelConfig method.
        # @!attribute [rw] google_channel_config
        #   @return [::Google::Cloud::Eventarc::V1::GoogleChannelConfig]
        #     Required. The config to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The fields to be updated; only fields explicitly provided are updated.
        #     If no field mask is provided, all provided fields in the request are
        #     updated. To update all fields, provide a field mask of "*".
        class UpdateGoogleChannelConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the GetGoogleChannelConfig method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the config to get.
        class GetGoogleChannelConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
