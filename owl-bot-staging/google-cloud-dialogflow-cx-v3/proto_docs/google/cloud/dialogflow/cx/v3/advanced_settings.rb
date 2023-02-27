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
          # Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
          # Settings exposed at lower level overrides the settings exposed at higher
          # level. Overriding occurs at the sub-setting level. For example, the
          # playback_interruption_settings at fulfillment level only overrides the
          # playback_interruption_settings at the agent level, leaving other settings
          # at the agent level unchanged.
          #
          # DTMF settings does not override each other. DTMF settings set at different
          # levels define DTMF detections running in parallel.
          #
          # Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
          # @!attribute [rw] audio_export_gcs_destination
          #   @return [::Google::Cloud::Dialogflow::CX::V3::GcsDestination]
          #     If present, incoming audio is exported by Dialogflow to the configured
          #     Google Cloud Storage destination.
          #     Exposed at the following levels:
          #     - Agent level
          #     - Flow level
          # @!attribute [rw] logging_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings::LoggingSettings]
          #     Settings for logging.
          #     Settings for Dialogflow History, Contact Center messages, StackDriver logs,
          #     and speech logging.
          #     Exposed at the following levels:
          #     - Agent level.
          class AdvancedSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Define behaviors on logging.
            # @!attribute [rw] enable_stackdriver_logging
            #   @return [::Boolean]
            #     If true, StackDriver logging is currently enabled.
            # @!attribute [rw] enable_interaction_logging
            #   @return [::Boolean]
            #     If true, DF Interaction logging is currently enabled.
            class LoggingSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
