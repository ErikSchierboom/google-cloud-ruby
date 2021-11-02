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
        # Request message for PurgeUserEvents method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the event_store under which the events are
        #     created. The format is
        #     `projects/${projectId}/locations/global/catalogs/${catalogId}/eventStores/${eventStoreId}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. The filter string to specify the events to be deleted. Empty
        #     string filter is not allowed. This filter can also be used with
        #     ListUserEvents API to list events that will be deleted. The eligible fields
        #     for filtering are:
        #     * eventType - UserEvent.eventType field of type string.
        #     * eventTime - in ISO 8601 "zulu" format.
        #     * visitorId - field of type string. Specifying this will delete all events
        #     associated with a visitor.
        #     * userId - field of type string. Specifying this will delete all events
        #     associated with a user.
        #     Example 1: Deleting all events in a time range.
        #     `eventTime > "2012-04-23T18:25:43.511Z" eventTime <
        #     "2012-04-23T18:30:43.511Z"`
        #     Example 2: Deleting specific eventType in time range.
        #     `eventTime > "2012-04-23T18:25:43.511Z" eventType = "detail-page-view"`
        #     Example 3: Deleting all events for a specific visitor
        #     `visitorId = visitor1024`
        #     The filtering fields are assumed to have an implicit AND.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Optional. The default value is false. Override this flag to true to
        #     actually perform the purge. If the field is not set to true, a sampling of
        #     events to be deleted will be returned.
        class PurgeUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeUserEvents operation.
        # This will be returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] operation_name
        #   @return [::String]
        #     The ID of the request / operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        class PurgeUserEventsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the PurgeUserEventsRequest. If the long running operation is
        # successfully done, then this message is returned by the
        # google.longrunning.Operations.response field.
        # @!attribute [rw] purged_events_count
        #   @return [::Integer]
        #     The total count of events purged as a result of the operation.
        # @!attribute [rw] user_events_sample
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::UserEvent>]
        #     A sampling of events deleted (or will be deleted) depending on the `force`
        #     property in the request. Max of 500 items will be returned.
        class PurgeUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for WriteUserEvent method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent eventStore resource name, such as
        #     `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`.
        # @!attribute [rw] user_event
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::UserEvent]
        #     Required. User event to write.
        class WriteUserEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CollectUserEvent method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent eventStore name, such as
        #     `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`.
        # @!attribute [rw] user_event
        #   @return [::String]
        #     Required. URL encoded UserEvent proto.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Optional. The url including cgi-parameters but excluding the hash fragment.
        #     The URL must be truncated to 1.5K bytes to conservatively be under the 2K
        #     bytes. This is often more useful than the referer url, because many
        #     browsers only send the domain for 3rd party requests.
        # @!attribute [rw] ets
        #   @return [::Integer]
        #     Optional. The event timestamp in milliseconds. This prevents browser
        #     caching of otherwise identical get requests. The name is abbreviated to
        #     reduce the payload bytes.
        class CollectUserEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListUserEvents method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent eventStore resource name, such as
        #     `projects/*/locations/*/catalogs/default_catalog/eventStores/default_event_store`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of results to return per page. If zero, the
        #     service will choose a reasonable default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The previous ListUserEventsResponse.next_page_token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering expression to specify restrictions over
        #     returned events. This is a sequence of terms, where each term applies some
        #     kind of a restriction to the returned user events. Use this expression to
        #     restrict results to a specific time range, or filter events by eventType.
        #        eg: eventTime > "2012-04-23T18:25:43.511Z" eventsMissingCatalogItems
        #        eventTime<"2012-04-23T18:25:43.511Z" eventType=search
        #
        #       We expect only 3 types of fields:
        #
        #        * eventTime: this can be specified a maximum of 2 times, once with a
        #          less than operator and once with a greater than operator. The
        #          eventTime restrict should result in one contiguous valid eventTime
        #          range.
        #
        #        * eventType: only 1 eventType restriction can be specified.
        #
        #        * eventsMissingCatalogItems: specififying this will restrict results
        #          to events for which catalog items were not found in the catalog. The
        #          default behavior is to return only those events for which catalog
        #          items were found.
        #
        #       Some examples of valid filters expressions:
        #
        #       * Example 1: eventTime > "2012-04-23T18:25:43.511Z"
        #                 eventTime < "2012-04-23T18:30:43.511Z"
        #       * Example 2: eventTime > "2012-04-23T18:25:43.511Z"
        #                 eventType = detail-page-view
        #       * Example 3: eventsMissingCatalogItems
        #                 eventType = search eventTime < "2018-04-23T18:30:43.511Z"
        #       * Example 4: eventTime > "2012-04-23T18:25:43.511Z"
        #       * Example 5: eventType = search
        #       * Example 6: eventsMissingCatalogItems
        class ListUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ListUserEvents method.
        # @!attribute [rw] user_events
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::UserEvent>]
        #     The user events.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If empty, the list is complete. If nonempty, the token to pass to the next
        #     request's ListUserEvents.page_token.
        class ListUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
