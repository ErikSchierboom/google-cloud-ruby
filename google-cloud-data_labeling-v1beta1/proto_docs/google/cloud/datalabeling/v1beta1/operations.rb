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
        # Response used for ImportData longrunning operation.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Ouptut only. The name of imported dataset.
        # @!attribute [rw] total_count
        #   @return [::Integer]
        #     Output only. Total number of examples requested to import
        # @!attribute [rw] import_count
        #   @return [::Integer]
        #     Output only. Number of examples imported successfully.
        class ImportDataOperationResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response used for ExportDataset longrunning operation.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Ouptut only. The name of dataset.
        #     "projects/*/datasets/*"
        # @!attribute [rw] total_count
        #   @return [::Integer]
        #     Output only. Total number of examples requested to export
        # @!attribute [rw] export_count
        #   @return [::Integer]
        #     Output only. Number of examples exported successfully.
        # @!attribute [rw] label_stats
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelStats]
        #     Output only. Statistic infos of labels in the exported dataset.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::OutputConfig]
        #     Output only. output_config in the ExportData request.
        class ExportDataOperationResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of an ImportData operation.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Output only. The name of imported dataset.
        #     "projects/*/datasets/*"
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Output only. Partial failures encountered.
        #     E.g. single files that couldn't be read.
        #     Status details field will contain standard GCP error details.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when import dataset request was created.
        class ImportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of an ExportData operation.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Output only. The name of dataset to be exported.
        #     "projects/*/datasets/*"
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Output only. Partial failures encountered.
        #     E.g. single files that couldn't be read.
        #     Status details field will contain standard GCP error details.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when export dataset request was created.
        class ExportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of a labeling operation, such as LabelImage or LabelVideo.
        # Next tag: 20
        # @!attribute [rw] image_classification_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageClassificationOperationMetadata]
        #     Details of label image classification operation.
        # @!attribute [rw] image_bounding_box_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageBoundingBoxOperationMetadata]
        #     Details of label image bounding box operation.
        # @!attribute [rw] image_bounding_poly_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageBoundingPolyOperationMetadata]
        #     Details of label image bounding poly operation.
        # @!attribute [rw] image_oriented_bounding_box_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageOrientedBoundingBoxOperationMetadata]
        #     Details of label image oriented bounding box operation.
        # @!attribute [rw] image_polyline_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImagePolylineOperationMetadata]
        #     Details of label image polyline operation.
        # @!attribute [rw] image_segmentation_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageSegmentationOperationMetadata]
        #     Details of label image segmentation operation.
        # @!attribute [rw] video_classification_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelVideoClassificationOperationMetadata]
        #     Details of label video classification operation.
        # @!attribute [rw] video_object_detection_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelVideoObjectDetectionOperationMetadata]
        #     Details of label video object detection operation.
        # @!attribute [rw] video_object_tracking_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelVideoObjectTrackingOperationMetadata]
        #     Details of label video object tracking operation.
        # @!attribute [rw] video_event_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelVideoEventOperationMetadata]
        #     Details of label video event operation.
        # @!attribute [rw] text_classification_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelTextClassificationOperationMetadata]
        #     Details of label text classification operation.
        # @!attribute [rw] text_entity_extraction_details
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelTextEntityExtractionOperationMetadata]
        #     Details of label text entity extraction operation.
        # @!attribute [rw] progress_percent
        #   @return [::Integer]
        #     Output only. Progress of label operation. Range: [0, 100].
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Output only. Partial failures encountered.
        #     E.g. single files that couldn't be read.
        #     Status details field will contain standard GCP error details.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when labeling request was created.
        class LabelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of a LabelImageClassification operation.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelImageClassificationOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelImageBoundingBox operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelImageBoundingBoxOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelImageOrientedBoundingBox operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config.
        class LabelImageOrientedBoundingBoxOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of LabelImageBoundingPoly operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelImageBoundingPolyOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of LabelImagePolyline operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelImagePolylineOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelImageSegmentation operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config.
        class LabelImageSegmentationOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelVideoClassification operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelVideoClassificationOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelVideoObjectDetection operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelVideoObjectDetectionOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelVideoObjectTracking operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelVideoObjectTrackingOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelVideoEvent operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelVideoEventOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelTextClassification operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelTextClassificationOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a LabelTextEntityExtraction operation metadata.
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Basic human annotation config used in labeling request.
        class LabelTextEntityExtractionOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of a CreateInstruction operation.
        # @!attribute [rw] instruction
        #   @return [::String]
        #     The name of the created Instruction.
        #     projects/\\{project_id}/instructions/\\{instruction_id}
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Partial failures encountered.
        #     E.g. single files that couldn't be read.
        #     Status details field will contain standard GCP error details.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when create instruction request was created.
        class CreateInstructionMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

