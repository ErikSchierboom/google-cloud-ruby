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
        # A representation of the ChannelConnection resource.
        # A ChannelConnection is a resource which event providers create during the
        # activation process to establish a connection between the provider and the
        # subscriber channel.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the connection.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned ID of the resource.
        #     The server guarantees uniqueness and immutability until deleted.
        # @!attribute [rw] channel
        #   @return [::String]
        #     Required. The name of the connected subscriber Channel.
        #     This is a weak reference to avoid cross project and cross accounts
        #     references. This must be in
        #     `projects/{project}/location/{location}/channels/{channel_id}` format.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] activation_token
        #   @return [::String]
        #     Input only. Activation token for the channel. The token will be used
        #     during the creation of ChannelConnection to bind the channel with the
        #     provider project. This field will not be stored in the provider resource.
        class ChannelConnection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
