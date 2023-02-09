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
    module DataLabeling
      module V1beta1
        # Instruction of how to perform the labeling task for human operators.
        # Currently only PDF instruction is supported.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Instruction resource name, format:
        #     projects/\\{project_id}/instructions/\\{instruction_id}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the instruction. Maximum of 64 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-provided description of the instruction.
        #     The description can be up to 10000 characters long.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time of instruction.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update time of instruction.
        # @!attribute [rw] data_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::DataType]
        #     Required. The data type of this instruction.
        # @!attribute [rw] csv_instruction
        #   @return [::Google::Cloud::DataLabeling::V1beta1::CsvInstruction]
        #     Deprecated: this instruction format is not supported any more.
        #     Instruction from a CSV file, such as for classification task.
        #     The CSV file should have exact two columns, in the following format:
        #
        #     * The first column is labeled data, such as an image reference, text.
        #     * The second column is comma separated labels associated with data.
        # @!attribute [rw] pdf_instruction
        #   @return [::Google::Cloud::DataLabeling::V1beta1::PdfInstruction]
        #     Instruction from a PDF document. The PDF should be in a Cloud Storage
        #     bucket.
        # @!attribute [rw] blocking_resources
        #   @return [::Array<::String>]
        #     Output only. The names of any related resources that are blocking changes
        #     to the instruction.
        class Instruction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Deprecated: this instruction format is not supported any more.
        # Instruction from a CSV file.
        # @!attribute [rw] gcs_file_uri
        #   @return [::String]
        #     CSV file for the instruction. Only gcs path is allowed.
        class CsvInstruction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Instruction from a PDF file.
        # @!attribute [rw] gcs_file_uri
        #   @return [::String]
        #     PDF file for the instruction. Only gcs path is allowed.
        class PdfInstruction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

