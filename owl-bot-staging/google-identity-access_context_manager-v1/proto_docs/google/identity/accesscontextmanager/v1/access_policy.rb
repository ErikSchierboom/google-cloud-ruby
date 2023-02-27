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
  module Identity
    module AccessContextManager
      module V1
        # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
        # attributes to use Google Cloud services) and `ServicePerimeters` (which
        # define regions of services able to freely pass data within a perimeter). An
        # access policy is globally visible within an organization, and the
        # restrictions it specifies apply to all projects within an organization.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Resource name of the `AccessPolicy`. Format:
        #     `accessPolicies/{access_policy}`
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of this `AccessPolicy` in the Cloud Resource
        #     Hierarchy. Currently immutable once created. Format:
        #     `organizations/{organization_id}`
        # @!attribute [rw] title
        #   @return [::String]
        #     Required. Human readable title. Does not affect behavior.
        # @!attribute [rw] scopes
        #   @return [::Array<::String>]
        #     The scopes of a policy define which resources an ACM policy can restrict,
        #     and where ACM resources can be referenced.
        #     For example, a policy with scopes=["folders/123"] has the following
        #     behavior:
        #     - vpcsc perimeters can only restrict projects within folders/123
        #     - access levels can only be referenced by resources within folders/123.
        #     If empty, there are no limitations on which resources can be restricted by
        #     an ACM policy, and there are no limitations on where ACM resources can be
        #     referenced.
        #     Only one policy can include a given scope (attempting to create a second
        #     policy which includes "folders/123" will result in an error).
        #     Currently, scopes cannot be modified after a policy is created.
        #     Currently, policies can only have a single scope.
        #     Format: list of `folders/{folder_number}` or `projects/{project_number}`
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the `AccessPolicy` was created in UTC.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the `AccessPolicy` was updated in UTC.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Output only. An opaque identifier for the current version of the
        #     `AccessPolicy`. This will always be a strongly validated etag, meaning that
        #     two Access Polices will be identical if and only if their etags are
        #     identical. Clients should not expect this to be in any specific format.
        class AccessPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
