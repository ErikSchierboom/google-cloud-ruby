# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/answer_record.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/answer_record_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module AnswerRecords
          # Service for managing
          # [AnswerRecords][google.cloud.dialogflow.v2.AnswerRecord].
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.AnswerRecords'

            # Returns the list of all answer records in the specified project in reverse
            # chronological order.
            rpc :ListAnswerRecords, ::Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest, ::Google::Cloud::Dialogflow::V2::ListAnswerRecordsResponse
            # Updates the specified answer record.
            rpc :UpdateAnswerRecord, ::Google::Cloud::Dialogflow::V2::UpdateAnswerRecordRequest, ::Google::Cloud::Dialogflow::V2::AnswerRecord
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
