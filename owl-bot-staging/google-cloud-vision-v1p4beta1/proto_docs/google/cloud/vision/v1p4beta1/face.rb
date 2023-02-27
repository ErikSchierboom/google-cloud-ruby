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
    module Vision
      module V1p4beta1
        # Parameters for a celebrity recognition request.
        # @!attribute [rw] celebrity_set
        #   @return [::Array<::String>]
        #     The resource names for one or more
        #     [CelebritySet][google.cloud.vision.v1p4beta1.CelebritySet]s. A celebrity
        #     set is preloaded and can be specified as "builtin/default". If this is
        #     specified, the algorithm will try to match the faces detected in the input
        #     image to the Celebrities in the CelebritySets.
        class FaceRecognitionParams
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Celebrity is a group of Faces with an identity.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the preloaded Celebrity. Has the format
        #     `builtin/{mid}`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The Celebrity's display name.
        # @!attribute [rw] description
        #   @return [::String]
        #     The Celebrity's description.
        class Celebrity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information about a face's identity.
        # @!attribute [rw] celebrity
        #   @return [::Google::Cloud::Vision::V1p4beta1::Celebrity]
        #     The {::Google::Cloud::Vision::V1p4beta1::Celebrity Celebrity} that this face was
        #     matched to.
        # @!attribute [rw] confidence
        #   @return [::Float]
        #     Recognition confidence. Range [0, 1].
        class FaceRecognitionResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
