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
    module WebSecurityScanner
      module V1
        # ! Information about a vulnerability with an HTML.
        # @!attribute [rw] action_uri
        #   @return [::String]
        #     ! The URI where to send the form when it's submitted.
        # @!attribute [rw] fields
        #   @return [::Array<::String>]
        #     ! The names of form fields related to the vulnerability.
        class Form
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information reported for an outdated library.
        # @!attribute [rw] library_name
        #   @return [::String]
        #     The name of the outdated library.
        # @!attribute [rw] version
        #   @return [::String]
        #     The version number.
        # @!attribute [rw] learn_more_urls
        #   @return [::Array<::String>]
        #     URLs to learn more information about the vulnerabilities in the library.
        class OutdatedLibrary
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information regarding any resource causing the vulnerability such
        # as JavaScript sources, image, audio files, etc.
        # @!attribute [rw] content_type
        #   @return [::String]
        #     The MIME type of this resource.
        # @!attribute [rw] resource_url
        #   @return [::String]
        #     URL of this violating resource.
        class ViolatingResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information about vulnerable request parameters.
        # @!attribute [rw] parameter_names
        #   @return [::Array<::String>]
        #     The vulnerable parameter names.
        class VulnerableParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information about vulnerable or missing HTTP Headers.
        # @!attribute [rw] headers
        #   @return [::Array<::Google::Cloud::WebSecurityScanner::V1::VulnerableHeaders::Header>]
        #     List of vulnerable headers.
        # @!attribute [rw] missing_headers
        #   @return [::Array<::Google::Cloud::WebSecurityScanner::V1::VulnerableHeaders::Header>]
        #     List of missing headers.
        class VulnerableHeaders
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes a HTTP Header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Header name.
          # @!attribute [rw] value
          #   @return [::String]
          #     Header value.
          class Header
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Information reported for an XSS.
        # @!attribute [rw] stack_traces
        #   @return [::Array<::String>]
        #     Stack traces leading to the point where the XSS occurred.
        # @!attribute [rw] error_message
        #   @return [::String]
        #     An error message generated by a javascript breakage.
        # @!attribute [rw] attack_vector
        #   @return [::Google::Cloud::WebSecurityScanner::V1::Xss::AttackVector]
        #     The attack vector of the payload triggering this XSS.
        # @!attribute [rw] stored_xss_seeding_url
        #   @return [::String]
        #     The reproduction url for the seeding POST request of a Stored XSS.
        class Xss
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Types of XSS attack vector.
          module AttackVector
            # Unknown attack vector.
            ATTACK_VECTOR_UNSPECIFIED = 0

            # The attack comes from fuzzing the browser's localStorage.
            LOCAL_STORAGE = 1

            # The attack comes from fuzzing the browser's sessionStorage.
            SESSION_STORAGE = 2

            # The attack comes from fuzzing the window's name property.
            WINDOW_NAME = 3

            # The attack comes from fuzzing the referrer property.
            REFERRER = 4

            # The attack comes from fuzzing an input element.
            FORM_INPUT = 5

            # The attack comes from fuzzing the browser's cookies.
            COOKIE = 6

            # The attack comes from hijacking the post messaging mechanism.
            POST_MESSAGE = 7

            # The attack comes from fuzzing parameters in the url.
            GET_PARAMETERS = 8

            # The attack comes from fuzzing the fragment in the url.
            URL_FRAGMENT = 9

            # The attack comes from fuzzing the HTML comments.
            HTML_COMMENT = 10

            # The attack comes from fuzzing the POST parameters.
            POST_PARAMETERS = 11

            # The attack comes from fuzzing the protocol.
            PROTOCOL = 12

            # The attack comes from the server side and is stored.
            STORED_XSS = 13

            # The attack is a Same-Origin Method Execution attack via a GET parameter.
            SAME_ORIGIN = 14

            # The attack payload is received from a third-party host via a URL that is
            # user-controllable
            USER_CONTROLLABLE_URL = 15
          end
        end

        # Information reported for an XXE.
        # @!attribute [rw] payload_value
        #   @return [::String]
        #     The XML string that triggered the XXE vulnerability. Non-payload values
        #     might be redacted.
        # @!attribute [rw] payload_location
        #   @return [::Google::Cloud::WebSecurityScanner::V1::Xxe::Location]
        #     Location within the request where the payload was placed.
        class Xxe
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Locations within a request where XML was substituted.
          module Location
            # Unknown Location.
            LOCATION_UNSPECIFIED = 0

            # The XML payload replaced the complete request body.
            COMPLETE_REQUEST_BODY = 1
          end
        end
      end
    end
  end
end
