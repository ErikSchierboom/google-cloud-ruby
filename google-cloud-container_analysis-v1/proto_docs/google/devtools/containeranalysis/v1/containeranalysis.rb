# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module ContainerAnalysis
      module V1
        # Request to get a vulnerability summary for some set of occurrences.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project to get a vulnerability summary for in the form of
        #     `projects/[PROJECT_ID]`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     The filter expression.
        class GetVulnerabilityOccurrencesSummaryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A summary of how many vulnerability occurrences there are per resource and
        # severity type.
        # @!attribute [rw] counts
        #   @return [::Array<::Google::Cloud::ContainerAnalysis::V1::VulnerabilityOccurrencesSummary::FixableTotalByDigest>]
        #     A listing by resource of the number of fixable and total vulnerabilities.
        class VulnerabilityOccurrencesSummary
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Per resource and severity counts of fixable and total vulnerabilities.
          # @!attribute [rw] resource_uri
          #   @return [::String]
          #     The affected resource.
          # @!attribute [rw] severity
          #   @return [::Grafeas::V1::Severity]
          #     The severity for this count. SEVERITY_UNSPECIFIED indicates total across
          #     all severities.
          # @!attribute [rw] fixable_count
          #   @return [::Integer]
          #     The number of fixable vulnerabilities associated with this resource.
          # @!attribute [rw] total_count
          #   @return [::Integer]
          #     The total number of vulnerabilities associated with this resource.
          class FixableTotalByDigest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

