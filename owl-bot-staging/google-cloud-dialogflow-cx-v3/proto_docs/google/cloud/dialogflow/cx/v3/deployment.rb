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
          # Represents an deployment in an environment. A deployment happens when a flow
          # version configured to be active in the environment. You can configure running
          # pre-deployment steps, e.g. running validation test cases, experiment
          # auto-rollout, etc.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the deployment.
          #     Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/deployments/<Deployment ID>.
          # @!attribute [rw] flow_version
          #   @return [::String]
          #     The name of the flow version for this deployment.
          #     Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/versions/<Verion ID>.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Deployment::State]
          #     The current state of the deployment.
          # @!attribute [rw] result
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Deployment::Result]
          #     Result of the deployment.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Start time of this deployment.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     End time of this deployment.
          class Deployment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Result of the deployment.
            # @!attribute [rw] deployment_test_results
            #   @return [::Array<::String>]
            #     Results of test cases running before the deployment.
            #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
            #     ID>/testCases/<TestCase ID>/results/<TestCaseResult ID>`.
            # @!attribute [rw] experiment
            #   @return [::String]
            #     The name of the experiment triggered by this deployment.
            #     Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
            #     ID>/environments/<Environment ID>/experiments/<Experiment ID>.
            class Result
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The state of the deployment.
            module State
              # State unspecified.
              STATE_UNSPECIFIED = 0

              # The deployment is running.
              RUNNING = 1

              # The deployment succeeded.
              SUCCEEDED = 2

              # The deployment failed.
              FAILED = 3
            end
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client#list_deployments Deployments.ListDeployments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} to
          #     list all environments for. Format: `projects/<Project
          #     ID>/locations/<Location ID>/agents/<Agent ID>/environments/<Environment
          #     ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 20 and
          #     at most 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListDeploymentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client#list_deployments Deployments.ListDeployments}.
          # @!attribute [rw] deployments
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Deployment>]
          #     The list of deployments. There will be a maximum number of items
          #     returned based on the page_size field in the request. The list may in some
          #     cases be empty or contain fewer entries than page_size even if this isn't
          #     the last page.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListDeploymentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client#get_deployment Deployments.GetDeployment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the
          #     {::Google::Cloud::Dialogflow::CX::V3::Deployment Deployment}. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/deployments/<Deployment ID>`.
          class GetDeploymentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
