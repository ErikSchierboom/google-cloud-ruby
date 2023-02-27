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
  module Iam
    module Credentials
      module V1
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the service account for which the credentials
        #     are requested, in the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] delegates
        #   @return [::Array<::String>]
        #     The sequence of service accounts in a delegation chain. Each service
        #     account must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on its next service account in the chain. The last service account in the
        #     chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on the service account that is specified in the `name` field of the
        #     request.
        #
        #     The delegates must have the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] scope
        #   @return [::Array<::String>]
        #     Required. Code to identify the scopes to be included in the OAuth 2.0 access token.
        #     See https://developers.google.com/identity/protocols/googlescopes for more
        #     information.
        #     At least one value required.
        # @!attribute [rw] lifetime
        #   @return [::Google::Protobuf::Duration]
        #     The desired lifetime duration of the access token in seconds.
        #     Must be set to a value less than or equal to 3600 (1 hour). If a value is
        #     not specified, the token's lifetime will be set to a default value of one
        #     hour.
        class GenerateAccessTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] access_token
        #   @return [::String]
        #     The OAuth 2.0 access token.
        # @!attribute [rw] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Token expiration time.
        #     The expiration time is always set.
        class GenerateAccessTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the service account for which the credentials
        #     are requested, in the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] delegates
        #   @return [::Array<::String>]
        #     The sequence of service accounts in a delegation chain. Each service
        #     account must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on its next service account in the chain. The last service account in the
        #     chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on the service account that is specified in the `name` field of the
        #     request.
        #
        #     The delegates must have the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] payload
        #   @return [::String]
        #     Required. The bytes to sign.
        class SignBlobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] key_id
        #   @return [::String]
        #     The ID of the key used to sign the blob.
        # @!attribute [rw] signed_blob
        #   @return [::String]
        #     The signed blob.
        class SignBlobResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the service account for which the credentials
        #     are requested, in the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] delegates
        #   @return [::Array<::String>]
        #     The sequence of service accounts in a delegation chain. Each service
        #     account must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on its next service account in the chain. The last service account in the
        #     chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on the service account that is specified in the `name` field of the
        #     request.
        #
        #     The delegates must have the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] payload
        #   @return [::String]
        #     Required. The JWT payload to sign: a JSON object that contains a JWT Claims Set.
        class SignJwtRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] key_id
        #   @return [::String]
        #     The ID of the key used to sign the JWT.
        # @!attribute [rw] signed_jwt
        #   @return [::String]
        #     The signed JWT.
        class SignJwtResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the service account for which the credentials
        #     are requested, in the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] delegates
        #   @return [::Array<::String>]
        #     The sequence of service accounts in a delegation chain. Each service
        #     account must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on its next service account in the chain. The last service account in the
        #     chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        #     on the service account that is specified in the `name` field of the
        #     request.
        #
        #     The delegates must have the following format:
        #     `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
        #     character is required; replacing it with a project ID is invalid.
        # @!attribute [rw] audience
        #   @return [::String]
        #     Required. The audience for the token, such as the API or account that this token
        #     grants access to.
        # @!attribute [rw] include_email
        #   @return [::Boolean]
        #     Include the service account email in the token. If set to `true`, the
        #     token will contain `email` and `email_verified` claims.
        class GenerateIdTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] token
        #   @return [::String]
        #     The OpenId Connect ID token.
        class GenerateIdTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
