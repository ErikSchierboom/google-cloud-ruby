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
    module DataLabeling
      module V1beta1
        # Describes an evaluation between a machine learning model's predictions and
        # ground truth labels. Created when an {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob EvaluationJob} runs successfully.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Resource name of an evaluation. The name has the following
        #     format:
        #
        #     "projects/<var>\\{project_id}</var>/datasets/<var>\\{dataset_id}</var>/evaluations/<var>\\{evaluation_id</var>}'
        # @!attribute [rw] config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationConfig]
        #     Output only. Options used in the evaluation job that created this
        #     evaluation.
        # @!attribute [rw] evaluation_job_run_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp for when the evaluation job that created this
        #     evaluation ran.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp for when this evaluation was created.
        # @!attribute [rw] evaluation_metrics
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationMetrics]
        #     Output only. Metrics comparing predictions to ground truth labels.
        # @!attribute [rw] annotation_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationType]
        #     Output only. Type of task that the model version being evaluated performs,
        #     as defined in the
        #
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJobConfig#input_config evaluationJobConfig.inputConfig.annotationType}
        #     field of the evaluation job that created this evaluation.
        # @!attribute [rw] evaluated_item_count
        #   @return [::Integer]
        #     Output only. The number of items in the ground truth dataset that were used
        #     for this evaluation. Only populated when the evaulation is for certain
        #     AnnotationTypes.
        class Evaluation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration details used for calculating evaluation metrics and creating an
        # {::Google::Cloud::DataLabeling::V1beta1::Evaluation Evaluation}.
        # @!attribute [rw] bounding_box_evaluation_options
        #   @return [::Google::Cloud::DataLabeling::V1beta1::BoundingBoxEvaluationOptions]
        #     Only specify this field if the related model performs image object
        #     detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate
        #     bounding boxes.
        class EvaluationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Options regarding evaluation between bounding boxes.
        # @!attribute [rw] iou_threshold
        #   @return [::Float]
        #     Minimum
        #     [intersection-over-union
        #
        #     (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union)
        #     required for 2 bounding boxes to be considered a match. This must be a
        #     number between 0 and 1.
        class BoundingBoxEvaluationOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] classification_metrics
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ClassificationMetrics]
        # @!attribute [rw] object_detection_metrics
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ObjectDetectionMetrics]
        class EvaluationMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metrics calculated for a classification model.
        # @!attribute [rw] pr_curve
        #   @return [::Google::Cloud::DataLabeling::V1beta1::PrCurve]
        #     Precision-recall curve based on ground truth labels, predicted labels, and
        #     scores for the predicted labels.
        # @!attribute [rw] confusion_matrix
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ConfusionMatrix]
        #     Confusion matrix of predicted labels vs. ground truth labels.
        class ClassificationMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metrics calculated for an image object detection (bounding box) model.
        # @!attribute [rw] pr_curve
        #   @return [::Google::Cloud::DataLabeling::V1beta1::PrCurve]
        #     Precision-recall curve.
        class ObjectDetectionMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] annotation_spec
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationSpec]
        #     The annotation spec of the label for which the precision-recall curve
        #     calculated. If this field is empty, that means the precision-recall curve
        #     is an aggregate curve for all labels.
        # @!attribute [rw] area_under_curve
        #   @return [::Float]
        #     Area under the precision-recall curve. Not to be confused with area under
        #     a receiver operating characteristic (ROC) curve.
        # @!attribute [rw] confidence_metrics_entries
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::PrCurve::ConfidenceMetricsEntry>]
        #     Entries that make up the precision-recall graph. Each entry is a "point" on
        #     the graph drawn for a different `confidence_threshold`.
        # @!attribute [rw] mean_average_precision
        #   @return [::Float]
        #     Mean average prcision of this curve.
        class PrCurve
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] confidence_threshold
          #   @return [::Float]
          #     Threshold used for this entry.
          #
          #     For classification tasks, this is a classification threshold: a
          #     predicted label is categorized as positive or negative (in the context of
          #     this point on the PR curve) based on whether the label's score meets this
          #     threshold.
          #
          #     For image object detection (bounding box) tasks, this is the
          #     [intersection-over-union
          #
          #     (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union)
          #     threshold for the context of this point on the PR curve.
          # @!attribute [rw] recall
          #   @return [::Float]
          #     Recall value.
          # @!attribute [rw] precision
          #   @return [::Float]
          #     Precision value.
          # @!attribute [rw] f1_score
          #   @return [::Float]
          #     Harmonic mean of recall and precision.
          # @!attribute [rw] recall_at1
          #   @return [::Float]
          #     Recall value for entries with label that has highest score.
          # @!attribute [rw] precision_at1
          #   @return [::Float]
          #     Precision value for entries with label that has highest score.
          # @!attribute [rw] f1_score_at1
          #   @return [::Float]
          #     The harmonic mean of {::Google::Cloud::DataLabeling::V1beta1::PrCurve::ConfidenceMetricsEntry#recall_at1 recall_at1} and {::Google::Cloud::DataLabeling::V1beta1::PrCurve::ConfidenceMetricsEntry#precision_at1 precision_at1}.
          # @!attribute [rw] recall_at5
          #   @return [::Float]
          #     Recall value for entries with label that has highest 5 scores.
          # @!attribute [rw] precision_at5
          #   @return [::Float]
          #     Precision value for entries with label that has highest 5 scores.
          # @!attribute [rw] f1_score_at5
          #   @return [::Float]
          #     The harmonic mean of {::Google::Cloud::DataLabeling::V1beta1::PrCurve::ConfidenceMetricsEntry#recall_at5 recall_at5} and {::Google::Cloud::DataLabeling::V1beta1::PrCurve::ConfidenceMetricsEntry#precision_at5 precision_at5}.
          class ConfidenceMetricsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Confusion matrix of the model running the classification. Only applicable
        # when the metrics entry aggregates multiple labels. Not applicable when the
        # entry is for a single label.
        # @!attribute [rw] row
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::ConfusionMatrix::Row>]
        class ConfusionMatrix
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] annotation_spec
          #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationSpec]
          #     The annotation spec of a predicted label.
          # @!attribute [rw] item_count
          #   @return [::Integer]
          #     Number of items predicted to have this label. (The ground truth label for
          #     these items is the `Row.annotationSpec` of this entry's parent.)
          class ConfusionMatrixEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A row in the confusion matrix. Each entry in this row has the same
          # ground truth label.
          # @!attribute [rw] annotation_spec
          #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationSpec]
          #     The annotation spec of the ground truth label for this row.
          # @!attribute [rw] entries
          #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::ConfusionMatrix::ConfusionMatrixEntry>]
          #     A list of the confusion matrix entries. One entry for each possible
          #     predicted label.
          class Row
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
