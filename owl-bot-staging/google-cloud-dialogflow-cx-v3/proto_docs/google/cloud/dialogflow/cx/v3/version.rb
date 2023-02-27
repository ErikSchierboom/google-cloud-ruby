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
    module Dialogflow
      module CX
        module V3
          # Metadata associated with the long running operation for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#create_version Versions.CreateVersion}.
          # @!attribute [rw] version
          #   @return [::String]
          #     Name of the created version.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/versions/<Version ID>`.
          class CreateVersionOperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a version of a flow.
          # @!attribute [rw] name
          #   @return [::String]
          #     Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/versions/<Version ID>. Version ID is a self-increasing
          #     number generated by Dialogflow upon version creation.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the version. Limit of 64 characters.
          # @!attribute [rw] description
          #   @return [::String]
          #     The description of the version. The maximum length is 500 characters. If
          #     exceeded, the request is rejected.
          # @!attribute [r] nlu_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::NluSettings]
          #     Output only. The NLU settings of the flow at version creation.
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Create time of the version.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Version::State]
          #     Output only. The state of this version. This field is read-only and cannot
          #     be set by create and update methods.
          class Version
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The state of the version.
            module State
              # Not specified. This value is not used.
              STATE_UNSPECIFIED = 0

              # Version is not ready to serve (e.g. training is running).
              RUNNING = 1

              # Training has succeeded and this version is ready to serve.
              SUCCEEDED = 2

              # Version training failed.
              FAILED = 3
            end
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#list_versions Versions.ListVersions}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Flow Flow} to list all
          #     versions for. Format: `projects/<Project ID>/locations/<Location
          #     ID>/agents/<Agent ID>/flows/<Flow ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 20 and
          #     at most 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListVersionsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#list_versions Versions.ListVersions}.
          # @!attribute [rw] versions
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Version>]
          #     A list of versions. There will be a maximum number of items returned based
          #     on the page_size field in the request. The list may in some cases be empty
          #     or contain fewer entries than page_size even if this isn't the last page.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListVersionsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#get_version Versions.GetVersion}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the {::Google::Cloud::Dialogflow::CX::V3::Version Version}.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/versions/<Version ID>`.
          class GetVersionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#create_version Versions.CreateVersion}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Flow Flow} to create an
          #     {::Google::Cloud::Dialogflow::CX::V3::Version Version} for. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] version
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Version]
          #     Required. The version to create.
          class CreateVersionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#update_version Versions.UpdateVersion}.
          # @!attribute [rw] version
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Version]
          #     Required. The version to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The mask to control which fields get updated. Currently only
          #     `description` and `display_name` can be updated.
          class UpdateVersionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#delete_version Versions.DeleteVersion}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the {::Google::Cloud::Dialogflow::CX::V3::Version Version}
          #     to delete. Format: `projects/<Project ID>/locations/<Location
          #     ID>/agents/<Agent ID>/flows/<Flow ID>/versions/<Version ID>`.
          class DeleteVersionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#load_version Versions.LoadVersion}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Version Version} to be loaded
          #     to draft flow. Format: `projects/<Project ID>/locations/<Location
          #     ID>/agents/<Agent ID>/flows/<Flow ID>/versions/<Version ID>`.
          # @!attribute [rw] allow_override_agent_resources
          #   @return [::Boolean]
          #     This field is used to prevent accidental overwrite of other agent
          #     resources, which can potentially impact other flow's behavior. If
          #     `allow_override_agent_resources` is false, conflicted agent-level resources
          #     will not be overridden (i.e. intents, entities, webhooks).
          class LoadVersionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#compare_versions Versions.CompareVersions}.
          # @!attribute [rw] base_version
          #   @return [::String]
          #     Required. Name of the base flow version to compare with the target version.
          #     Use version ID `0` to indicate the draft version of the specified flow.
          #
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/
          #     <Agent ID>/flows/<Flow ID>/versions/<Version ID>`.
          # @!attribute [rw] target_version
          #   @return [::String]
          #     Required. Name of the target flow version to compare with the
          #     base version. Use version ID `0` to indicate the draft version of the
          #     specified flow. Format: `projects/<Project ID>/locations/<Location
          #     ID>/agents/<Agent ID>/flows/<Flow ID>/versions/<Version ID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language to compare the flow versions for.
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/docs/reference/language) are
          #     supported. Note: languages must be enabled in the agent before they can be
          #     used.
          class CompareVersionsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Versions::Client#compare_versions Versions.CompareVersions}.
          # @!attribute [rw] base_version_content_json
          #   @return [::String]
          #     JSON representation of the base version content.
          # @!attribute [rw] target_version_content_json
          #   @return [::String]
          #     JSON representation of the target version content.
          # @!attribute [rw] compare_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The timestamp when the two version compares.
          class CompareVersionsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
