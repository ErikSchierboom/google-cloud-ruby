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
        # Dataset is the resource to hold your data. You can request multiple labeling
        # tasks for a dataset while each one will generate an AnnotatedDataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Dataset resource name, format is:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the dataset. Maximum of 64 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-provided description of the annotation specification set.
        #     The description can be up to 10000 characters long.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the dataset is created.
        # @!attribute [rw] input_configs
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::InputConfig>]
        #     Output only. This is populated with the original input configs
        #     where ImportData is called. It is available only after the clients
        #     import data to this dataset.
        # @!attribute [rw] blocking_resources
        #   @return [::Array<::String>]
        #     Output only. The names of any related resources that are blocking changes
        #     to the dataset.
        # @!attribute [rw] data_item_count
        #   @return [::Integer]
        #     Output only. The number of data items in the dataset.
        class Dataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of input data, including data type, location, etc.
        # @!attribute [rw] text_metadata
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextMetadata]
        #     Required for text import, as language code must be specified.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::DataLabeling::V1beta1::GcsSource]
        #     Source located in Cloud Storage.
        # @!attribute [rw] bigquery_source
        #   @return [::Google::Cloud::DataLabeling::V1beta1::BigQuerySource]
        #     Source located in BigQuery. You must specify this field if you are using
        #     this InputConfig in an {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob}.
        # @!attribute [rw] data_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::DataType]
        #     Required. Data type must be specifed when user tries to import data.
        # @!attribute [rw] annotation_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationType]
        #     Optional. The type of annotation to be performed on this data. You must
        #     specify this field if you are using this InputConfig in an
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob}.
        # @!attribute [rw] classification_metadata
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ClassificationMetadata]
        #     Optional. Metadata about annotations for the input. You must specify this
        #     field if you are using this InputConfig in an {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob} for a
        #     model version that performs classification.
        class InputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for the text.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of this text, as a
        #     [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
        #     Default value is en-US.
        class TextMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for classification annotations.
        # @!attribute [rw] is_multi_label
        #   @return [::Boolean]
        #     Whether the classification task is multi-label or not.
        class ClassificationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Source of the Cloud Storage file to be imported.
        # @!attribute [rw] input_uri
        #   @return [::String]
        #     Required. The input URI of source file. This must be a Cloud Storage path
        #     (`gs://...`).
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The format of the source file. Only "text/csv" is supported.
        class GcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The BigQuery location for input data. If used in an {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob}, this
        # is where the service saves the prediction input and output sampled from the
        # model version.
        # @!attribute [rw] input_uri
        #   @return [::String]
        #     Required. BigQuery URI to a table, up to 2,000 characters long. If you
        #     specify the URI of a table that does not exist, Data Labeling Service
        #     creates a table at the URI with the correct schema when you create your
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob}. If you specify the URI of a table that already exists,
        #     it must have the
        #     [correct
        #     schema](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
        #
        #     Provide the table URI in the following format:
        #
        #     "bq://<var>\\{your_project_id}</var>/<var>\\{your_dataset_name}</var>/<var>\\{your_table_name}</var>"
        #
        #     [Learn
        #     more](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
        class BigQuerySource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of output data.
        # @!attribute [rw] gcs_destination
        #   @return [::Google::Cloud::DataLabeling::V1beta1::GcsDestination]
        #     Output to a file in Cloud Storage. Should be used for labeling output
        #     other than image segmentation.
        # @!attribute [rw] gcs_folder_destination
        #   @return [::Google::Cloud::DataLabeling::V1beta1::GcsFolderDestination]
        #     Output to a folder in Cloud Storage. Should be used for image
        #     segmentation labeling output.
        class OutputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Export destination of the data.Only gcs path is allowed in
        # output_uri.
        # @!attribute [rw] output_uri
        #   @return [::String]
        #     Required. The output uri of destination file.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The format of the gcs destination. Only "text/csv" and
        #     "application/json"
        #     are supported.
        class GcsDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Export folder destination of the data.
        # @!attribute [rw] output_folder_uri
        #   @return [::String]
        #     Required. Cloud Storage directory to export data to.
        class GcsFolderDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DataItem is a piece of data, without annotation. For example, an image.
        # @!attribute [rw] image_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ImagePayload]
        #     The image payload, a container of the image bytes/uri.
        # @!attribute [rw] text_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextPayload]
        #     The text payload, a container of text content.
        # @!attribute [rw] video_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::VideoPayload]
        #     The video payload, a container of the video uri.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Name of the data item, in format of:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/dataItems/\\{data_item_id}
        class DataItem
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AnnotatedDataset is a set holding annotations for data in a Dataset. Each
        # labeling task will generate an AnnotatedDataset under the Dataset that the
        # task is requested for.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. AnnotatedDataset resource name in format of:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Output only. The display name of the AnnotatedDataset. It is specified in
        #     HumanAnnotationConfig when user starts a labeling task. Maximum of 64
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Output only. The description of the AnnotatedDataset. It is specified in
        #     HumanAnnotationConfig when user starts a labeling task. Maximum of 10000
        #     characters.
        # @!attribute [rw] annotation_source
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationSource]
        #     Output only. Source of the annotation.
        # @!attribute [rw] annotation_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationType]
        #     Output only. Type of the annotation. It is specified when starting labeling
        #     task.
        # @!attribute [rw] example_count
        #   @return [::Integer]
        #     Output only. Number of examples in the annotated dataset.
        # @!attribute [rw] completed_example_count
        #   @return [::Integer]
        #     Output only. Number of examples that have annotation in the annotated
        #     dataset.
        # @!attribute [rw] label_stats
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelStats]
        #     Output only. Per label statistics.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the AnnotatedDataset was created.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotatedDatasetMetadata]
        #     Output only. Additional information about AnnotatedDataset.
        # @!attribute [rw] blocking_resources
        #   @return [::Array<::String>]
        #     Output only. The names of any related resources that are blocking changes
        #     to the annotated dataset.
        class AnnotatedDataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Statistics about annotation specs.
        # @!attribute [rw] example_count
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     Map of each annotation spec's example count. Key is the annotation spec
        #     name and value is the number of examples for that annotation spec.
        #     If the annotated dataset does not have annotation spec, the map will return
        #     a pair where the key is empty string and value is the total number of
        #     annotations.
        class LabelStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class ExampleCountEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Metadata on AnnotatedDataset.
        # @!attribute [rw] image_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ImageClassificationConfig]
        #     Configuration for image classification task.
        # @!attribute [rw] bounding_poly_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::BoundingPolyConfig]
        #     Configuration for image bounding box and bounding poly task.
        # @!attribute [rw] polyline_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::PolylineConfig]
        #     Configuration for image polyline task.
        # @!attribute [rw] segmentation_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::SegmentationConfig]
        #     Configuration for image segmentation task.
        # @!attribute [rw] video_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::VideoClassificationConfig]
        #     Configuration for video classification task.
        # @!attribute [rw] object_detection_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ObjectDetectionConfig]
        #     Configuration for video object detection task.
        # @!attribute [rw] object_tracking_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ObjectTrackingConfig]
        #     Configuration for video object tracking task.
        # @!attribute [rw] event_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EventConfig]
        #     Configuration for video event labeling task.
        # @!attribute [rw] text_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextClassificationConfig]
        #     Configuration for text classification task.
        # @!attribute [rw] text_entity_extraction_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextEntityExtractionConfig]
        #     Configuration for text entity extraction task.
        # @!attribute [rw] human_annotation_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     HumanAnnotationConfig used when requesting the human labeling task for this
        #     AnnotatedDataset.
        class AnnotatedDatasetMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Example is a piece of data and its annotation. For example, an image with
        # label "house".
        # @!attribute [rw] image_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ImagePayload]
        #     The image payload, a container of the image bytes/uri.
        # @!attribute [rw] text_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextPayload]
        #     The text payload, a container of the text content.
        # @!attribute [rw] video_payload
        #   @return [::Google::Cloud::DataLabeling::V1beta1::VideoPayload]
        #     The video payload, a container of the video uri.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Name of the example, in format of:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}/examples/\\{example_id}
        # @!attribute [rw] annotations
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Annotation>]
        #     Output only. Annotations for the piece of data in Example.
        #     One piece of data can have multiple annotations.
        class Example
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        module DataType

          DATA_TYPE_UNSPECIFIED = 0

          # Allowed for continuous evaluation.
          IMAGE = 1

          VIDEO = 2

          # Allowed for continuous evaluation.
          TEXT = 4

          # Allowed for continuous evaluation.
          GENERAL_DATA = 6
        end
      end
    end
  end
end

