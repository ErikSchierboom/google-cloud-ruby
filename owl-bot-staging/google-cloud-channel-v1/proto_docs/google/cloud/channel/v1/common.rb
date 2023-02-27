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
    module Channel
      module V1
        # Required Edu Attributes
        # @!attribute [rw] institute_type
        #   @return [::Google::Cloud::Channel::V1::EduData::InstituteType]
        #     Designated institute type of customer.
        # @!attribute [rw] institute_size
        #   @return [::Google::Cloud::Channel::V1::EduData::InstituteSize]
        #     Size of the institute.
        # @!attribute [rw] website
        #   @return [::String]
        #     Web address for the edu customer's institution.
        class EduData
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum to specify the institute type.
          module InstituteType
            # Not used.
            INSTITUTE_TYPE_UNSPECIFIED = 0

            # Elementary/Secondary Schools & Districts
            K12 = 1

            # Higher Education Universities & Colleges
            UNIVERSITY = 2
          end

          # Number of students and staff the institute has.
          module InstituteSize
            # Not used.
            INSTITUTE_SIZE_UNSPECIFIED = 0

            # 1 - 100
            SIZE_1_100 = 1

            # 101 - 500
            SIZE_101_500 = 2

            # 501 - 1,000
            SIZE_501_1000 = 3

            # 1,001 - 2,000
            SIZE_1001_2000 = 4

            # 2,001 - 5,000
            SIZE_2001_5000 = 5

            # 5,001 - 10,000
            SIZE_5001_10000 = 6

            # 10,001 +
            SIZE_10001_OR_MORE = 7
          end
        end

        # Cloud Identity information for the Cloud Channel Customer.
        # @!attribute [rw] customer_type
        #   @return [::Google::Cloud::Channel::V1::CloudIdentityInfo::CustomerType]
        #     CustomerType indicates verification type needed for using services.
        # @!attribute [r] primary_domain
        #   @return [::String]
        #     Output only. The primary domain name.
        # @!attribute [r] is_domain_verified
        #   @return [::Boolean]
        #     Output only. Whether the domain is verified.
        #     This field is not returned for a Customer's cloud_identity_info resource.
        #     Partners can use the domains.get() method of the Workspace SDK's
        #     Directory API, or listen to the PRIMARY_DOMAIN_VERIFIED Pub/Sub event in
        #     to track domain verification of their resolve Workspace customers.
        # @!attribute [rw] alternate_email
        #   @return [::String]
        #     The alternate email.
        # @!attribute [rw] phone_number
        #   @return [::String]
        #     Phone number associated with the Cloud Identity.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Language code.
        # @!attribute [r] admin_console_uri
        #   @return [::String]
        #     Output only. URI of Customer's Admin console dashboard.
        # @!attribute [rw] edu_data
        #   @return [::Google::Cloud::Channel::V1::EduData]
        #     Edu information about the customer.
        class CloudIdentityInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # CustomerType of the customer
          module CustomerType
            # Not used.
            CUSTOMER_TYPE_UNSPECIFIED = 0

            # Domain-owning customer which needs domain verification to use services.
            DOMAIN = 1

            # Team customer which needs email verification to use services.
            TEAM = 2
          end
        end

        # Data type and value of a parameter.
        # @!attribute [rw] int64_value
        #   @return [::Integer]
        #     Represents an int64 value.
        # @!attribute [rw] string_value
        #   @return [::String]
        #     Represents a string value.
        # @!attribute [rw] double_value
        #   @return [::Float]
        #     Represents a double value.
        # @!attribute [rw] proto_value
        #   @return [::Google::Protobuf::Any]
        #     Represents an 'Any' proto value.
        # @!attribute [rw] bool_value
        #   @return [::Boolean]
        #     Represents a boolean value.
        class Value
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information needed to create an Admin User for Google Workspace.
        # @!attribute [rw] email
        #   @return [::String]
        #     Primary email of the admin user.
        # @!attribute [rw] given_name
        #   @return [::String]
        #     Given name of the admin user.
        # @!attribute [rw] family_name
        #   @return [::String]
        #     Family name of the admin user.
        class AdminUser
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
