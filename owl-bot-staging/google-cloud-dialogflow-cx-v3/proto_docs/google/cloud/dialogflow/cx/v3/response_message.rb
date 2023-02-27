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
          # Represents a response message that can be returned by a conversational agent.
          #
          # Response messages are also used for output audio synthesis. The approach is
          # as follows:
          #
          # * If at least one OutputAudioText response is present, then all
          #   OutputAudioText responses are linearly concatenated, and the result is used
          #   for output audio synthesis.
          # * If the OutputAudioText responses are a mixture of text and SSML, then the
          #   concatenated result is treated as SSML; otherwise, the result is treated as
          #   either text or SSML as appropriate. The agent designer should ideally use
          #   either text or SSML consistently throughout the bot design.
          # * Otherwise, all Text responses are linearly concatenated, and the result is
          #   used for output audio synthesis.
          #
          # This approach allows for more sophisticated user experience scenarios, where
          # the text displayed to the user may differ from what is heard.
          # @!attribute [rw] text
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::Text]
          #     Returns a text response.
          # @!attribute [rw] payload
          #   @return [::Google::Protobuf::Struct]
          #     Returns a response containing a custom, platform-specific payload.
          # @!attribute [rw] conversation_success
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::ConversationSuccess]
          #     Indicates that the conversation succeeded.
          # @!attribute [rw] output_audio_text
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::OutputAudioText]
          #     A text or ssml response that is preferentially used for TTS output audio
          #     synthesis, as described in the comment on the ResponseMessage message.
          # @!attribute [rw] live_agent_handoff
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::LiveAgentHandoff]
          #     Hands off conversation to a human agent.
          # @!attribute [r] end_interaction
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::EndInteraction]
          #     Output only. A signal that indicates the interaction with the Dialogflow
          #     agent has ended. This message is generated by Dialogflow only when the
          #     conversation reaches `END_SESSION` page. It is not supposed to be defined
          #     by the user.
          #
          #     It's guaranteed that there is at most one such message in each response.
          # @!attribute [rw] play_audio
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::PlayAudio]
          #     Signal that the client should play an audio clip hosted at a
          #     client-specific URI. Dialogflow uses this to construct
          #     {::Google::Cloud::Dialogflow::CX::V3::ResponseMessage#mixed_audio mixed_audio}.
          #     However, Dialogflow itself does not try to read or process the URI in any
          #     way.
          # @!attribute [r] mixed_audio
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::MixedAudio]
          #     Output only. An audio response message composed of both the synthesized
          #     Dialogflow agent responses and responses defined via
          #     {::Google::Cloud::Dialogflow::CX::V3::ResponseMessage#play_audio play_audio}.
          #     This message is generated by Dialogflow only and not supposed to be
          #     defined by the user.
          # @!attribute [rw] telephony_transfer_call
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::TelephonyTransferCall]
          #     A signal that the client should transfer the phone call connected to
          #     this agent to a third-party endpoint.
          # @!attribute [rw] channel
          #   @return [::String]
          #     The channel which the response is associated with. Clients can specify the
          #     channel via
          #     {::Google::Cloud::Dialogflow::CX::V3::QueryParameters#channel QueryParameters.channel},
          #     and only associated channel response will be returned.
          class ResponseMessage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The text response message.
            # @!attribute [rw] text
            #   @return [::Array<::String>]
            #     Required. A collection of text responses.
            # @!attribute [r] allow_playback_interruption
            #   @return [::Boolean]
            #     Output only. Whether the playback of this message can be interrupted by
            #     the end user's speech and the client can then starts the next Dialogflow
            #     request.
            class Text
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Indicates that the conversation should be handed off to a live agent.
            #
            # Dialogflow only uses this to determine which conversations were handed off
            # to a human agent for measurement purposes. What else to do with this signal
            # is up to you and your handoff procedures.
            #
            # You may set this, for example:
            # * In the
            # {::Google::Cloud::Dialogflow::CX::V3::Page#entry_fulfillment entry_fulfillment}
            # of a {::Google::Cloud::Dialogflow::CX::V3::Page Page} if
            #   entering the page indicates something went extremely wrong in the
            #   conversation.
            # * In a webhook response when you determine that the customer issue can only
            #   be handled by a human.
            # @!attribute [rw] metadata
            #   @return [::Google::Protobuf::Struct]
            #     Custom metadata for your handoff procedure. Dialogflow doesn't impose
            #     any structure on this.
            class LiveAgentHandoff
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Indicates that the conversation succeeded, i.e., the bot handled the issue
            # that the customer talked to it about.
            #
            # Dialogflow only uses this to determine which conversations should be
            # counted as successful and doesn't process the metadata in this message in
            # any way. Note that Dialogflow also considers conversations that get to the
            # conversation end page as successful even if they don't return
            # {::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::ConversationSuccess ConversationSuccess}.
            #
            # You may set this, for example:
            # * In the
            # {::Google::Cloud::Dialogflow::CX::V3::Page#entry_fulfillment entry_fulfillment}
            # of a {::Google::Cloud::Dialogflow::CX::V3::Page Page} if
            #   entering the page indicates that the conversation succeeded.
            # * In a webhook response when you determine that you handled the customer
            #   issue.
            # @!attribute [rw] metadata
            #   @return [::Google::Protobuf::Struct]
            #     Custom metadata. Dialogflow doesn't impose any structure on this.
            class ConversationSuccess
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # A text or ssml response that is preferentially used for TTS output audio
            # synthesis, as described in the comment on the ResponseMessage message.
            # @!attribute [rw] text
            #   @return [::String]
            #     The raw text to be synthesized.
            # @!attribute [rw] ssml
            #   @return [::String]
            #     The SSML text to be synthesized. For more information, see
            #     [SSML](/speech/text-to-speech/docs/ssml).
            # @!attribute [r] allow_playback_interruption
            #   @return [::Boolean]
            #     Output only. Whether the playback of this message can be interrupted by
            #     the end user's speech and the client can then starts the next Dialogflow
            #     request.
            class OutputAudioText
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Indicates that interaction with the Dialogflow agent has ended.
            # This message is generated by Dialogflow only and not supposed to be
            # defined by the user.
            class EndInteraction
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Specifies an audio clip to be played by the client as part of the response.
            # @!attribute [rw] audio_uri
            #   @return [::String]
            #     Required. URI of the audio clip. Dialogflow does not impose any
            #     validation on this value. It is specific to the client that reads it.
            # @!attribute [r] allow_playback_interruption
            #   @return [::Boolean]
            #     Output only. Whether the playback of this message can be interrupted by
            #     the end user's speech and the client can then starts the next Dialogflow
            #     request.
            class PlayAudio
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Represents an audio message that is composed of both segments
            # synthesized from the Dialogflow agent prompts and ones hosted externally
            # at the specified URIs.
            # The external URIs are specified via
            # {::Google::Cloud::Dialogflow::CX::V3::ResponseMessage#play_audio play_audio}.
            # This message is generated by Dialogflow only and not supposed to be
            # defined by the user.
            # @!attribute [rw] segments
            #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::ResponseMessage::MixedAudio::Segment>]
            #     Segments this audio response is composed of.
            class MixedAudio
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Represents one segment of audio.
              # @!attribute [rw] audio
              #   @return [::String]
              #     Raw audio synthesized from the Dialogflow agent's response using
              #     the output config specified in the request.
              # @!attribute [rw] uri
              #   @return [::String]
              #     Client-specific URI that points to an audio clip accessible to the
              #     client. Dialogflow does not impose any validation on it.
              # @!attribute [r] allow_playback_interruption
              #   @return [::Boolean]
              #     Output only. Whether the playback of this segment can be interrupted by
              #     the end user's speech and the client should then start the next
              #     Dialogflow request.
              class Segment
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Represents the signal that telles the client to transfer the phone call
            # connected to the agent to a third-party endpoint.
            # @!attribute [rw] phone_number
            #   @return [::String]
            #     Transfer the call to a phone number
            #     in [E.164 format](https://en.wikipedia.org/wiki/E.164).
            class TelephonyTransferCall
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
