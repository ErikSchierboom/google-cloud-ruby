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
    module Dataproc
      module V1
        # A Dataproc workflow template resource.
        # @!attribute [rw] id
        #   @return [::String]
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the workflow template, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}`
        #
        #     * For `projects.locations.workflowTemplates`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
        # @!attribute [rw] version
        #   @return [::Integer]
        #     Optional. Used to perform a consistent read-modify-write.
        #
        #     This field should be left blank for a `CreateWorkflowTemplate` request. It
        #     is required for an `UpdateWorkflowTemplate` request, and must match the
        #     current server version. A typical update template flow would fetch the
        #     current template with a `GetWorkflowTemplate` request, which will return
        #     the current template with the `version` field filled in with the
        #     current server version. The user updates other fields in the template,
        #     then returns it as part of the `UpdateWorkflowTemplate` request.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time template was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time template was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels to associate with this template. These labels
        #     will be propagated to all jobs and clusters created by the workflow
        #     instance.
        #
        #     Label **keys** must contain 1 to 63 characters, and must conform to
        #     [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
        #
        #     Label **values** may be empty, but, if present, must contain 1 to 63
        #     characters, and must conform to
        #     [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
        #
        #     No more than 32 labels can be associated with a template.
        # @!attribute [rw] placement
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowTemplatePlacement]
        #     Required. WorkflowTemplate scheduling information.
        # @!attribute [rw] jobs
        #   @return [::Array<::Google::Cloud::Dataproc::V1::OrderedJob>]
        #     Required. The Directed Acyclic Graph of Jobs to submit.
        # @!attribute [rw] parameters
        #   @return [::Array<::Google::Cloud::Dataproc::V1::TemplateParameter>]
        #     Optional. Template parameters whose values are substituted into the
        #     template. Values for parameters must be provided when the template is
        #     instantiated.
        # @!attribute [rw] dag_timeout
        #   @return [::Google::Protobuf::Duration]
        #     Optional. Timeout duration for the DAG of jobs, expressed in seconds (see
        #     [JSON representation of
        #     duration](https://developers.google.com/protocol-buffers/docs/proto3#json)).
        #     The timeout duration must be from 10 minutes ("600s") to 24 hours
        #     ("86400s"). The timer begins when the first job is submitted. If the
        #     workflow is running at the end of the timeout period, any remaining jobs
        #     are cancelled, the workflow is ended, and if the workflow was running on a
        #     [managed
        #     cluster](/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster),
        #     the cluster is deleted.
        class WorkflowTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Specifies workflow execution target.
        #
        # Either `managed_cluster` or `cluster_selector` is required.
        # @!attribute [rw] managed_cluster
        #   @return [::Google::Cloud::Dataproc::V1::ManagedCluster]
        #     A cluster that is managed by the workflow.
        # @!attribute [rw] cluster_selector
        #   @return [::Google::Cloud::Dataproc::V1::ClusterSelector]
        #     Optional. A selector that chooses target cluster for jobs based
        #     on metadata.
        #
        #     The selector is evaluated at the time each job is submitted.
        class WorkflowTemplatePlacement
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cluster that is managed by the workflow.
        # @!attribute [rw] cluster_name
        #   @return [::String]
        #     Required. The cluster name prefix. A unique cluster name will be formed by
        #     appending a random suffix.
        #
        #     The name must contain only lower-case letters (a-z), numbers (0-9),
        #     and hyphens (-). Must begin with a letter. Cannot begin or end with
        #     hyphen. Must consist of between 2 and 35 characters.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Dataproc::V1::ClusterConfig]
        #     Required. The cluster configuration.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels to associate with this cluster.
        #
        #     Label keys must be between 1 and 63 characters long, and must conform to
        #     the following PCRE regular expression:
        #     [\p\\{Ll}\p\\{Lo}][\p\\{Ll}\p\\{Lo}\p\\{N}_-]\\{0,62}
        #
        #     Label values must be between 1 and 63 characters long, and must conform to
        #     the following PCRE regular expression: [\p\\{Ll}\p\\{Lo}\p\\{N}_-]\\{0,63}
        #
        #     No more than 32 labels can be associated with a given cluster.
        class ManagedCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A selector that chooses target cluster for jobs based on metadata.
        # @!attribute [rw] zone
        #   @return [::String]
        #     Optional. The zone where workflow process executes. This parameter does not
        #     affect the selection of the cluster.
        #
        #     If unspecified, the zone of the first cluster matching the selector
        #     is used.
        # @!attribute [rw] cluster_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Required. The cluster labels. Cluster must have all labels
        #     to match.
        class ClusterSelector
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ClusterLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A job executed by the workflow.
        # @!attribute [rw] step_id
        #   @return [::String]
        #     Required. The step id. The id must be unique among all jobs
        #     within the template.
        #
        #     The step id is used as prefix for job id, as job
        #     `goog-dataproc-workflow-step-id` label, and in
        #     {::Google::Cloud::Dataproc::V1::OrderedJob#prerequisite_step_ids prerequisiteStepIds}
        #     field from other steps.
        #
        #     The id must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). Cannot begin or end with underscore
        #     or hyphen. Must consist of between 3 and 50 characters.
        # @!attribute [rw] hadoop_job
        #   @return [::Google::Cloud::Dataproc::V1::HadoopJob]
        #     Optional. Job is a Hadoop job.
        # @!attribute [rw] spark_job
        #   @return [::Google::Cloud::Dataproc::V1::SparkJob]
        #     Optional. Job is a Spark job.
        # @!attribute [rw] pyspark_job
        #   @return [::Google::Cloud::Dataproc::V1::PySparkJob]
        #     Optional. Job is a PySpark job.
        # @!attribute [rw] hive_job
        #   @return [::Google::Cloud::Dataproc::V1::HiveJob]
        #     Optional. Job is a Hive job.
        # @!attribute [rw] pig_job
        #   @return [::Google::Cloud::Dataproc::V1::PigJob]
        #     Optional. Job is a Pig job.
        # @!attribute [rw] spark_r_job
        #   @return [::Google::Cloud::Dataproc::V1::SparkRJob]
        #     Optional. Job is a SparkR job.
        # @!attribute [rw] spark_sql_job
        #   @return [::Google::Cloud::Dataproc::V1::SparkSqlJob]
        #     Optional. Job is a SparkSql job.
        # @!attribute [rw] presto_job
        #   @return [::Google::Cloud::Dataproc::V1::PrestoJob]
        #     Optional. Job is a Presto job.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels to associate with this job.
        #
        #     Label keys must be between 1 and 63 characters long, and must conform to
        #     the following regular expression:
        #     [\p\\{Ll}\p\\{Lo}][\p\\{Ll}\p\\{Lo}\p\\{N}_-]\\{0,62}
        #
        #     Label values must be between 1 and 63 characters long, and must conform to
        #     the following regular expression: [\p\\{Ll}\p\\{Lo}\p\\{N}_-]\\{0,63}
        #
        #     No more than 32 labels can be associated with a given job.
        # @!attribute [rw] scheduling
        #   @return [::Google::Cloud::Dataproc::V1::JobScheduling]
        #     Optional. Job scheduling configuration.
        # @!attribute [rw] prerequisite_step_ids
        #   @return [::Array<::String>]
        #     Optional. The optional list of prerequisite job step_ids.
        #     If not specified, the job will start at the beginning of workflow.
        class OrderedJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A configurable parameter that replaces one or more fields in the template.
        # Parameterizable fields:
        # - Labels
        # - File uris
        # - Job properties
        # - Job arguments
        # - Script variables
        # - Main class (in HadoopJob and SparkJob)
        # - Zone (in ClusterSelector)
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Parameter name.
        #     The parameter name is used as the key, and paired with the
        #     parameter value, which are passed to the template when the template
        #     is instantiated.
        #     The name must contain only capital letters (A-Z), numbers (0-9), and
        #     underscores (_), and must not start with a number. The maximum length is
        #     40 characters.
        # @!attribute [rw] fields
        #   @return [::Array<::String>]
        #     Required. Paths to all fields that the parameter replaces.
        #     A field is allowed to appear in at most one parameter's list of field
        #     paths.
        #
        #     A field path is similar in syntax to a
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}. For example, a
        #     field path that references the zone field of a workflow template's cluster
        #     selector would be specified as `placement.clusterSelector.zone`.
        #
        #     Also, field paths can reference fields using the following syntax:
        #
        #     * Values in maps can be referenced by key:
        #         * labels['key']
        #         * placement.clusterSelector.clusterLabels['key']
        #         * placement.managedCluster.labels['key']
        #         * placement.clusterSelector.clusterLabels['key']
        #         * jobs['step-id'].labels['key']
        #
        #     * Jobs in the jobs list can be referenced by step-id:
        #         * jobs['step-id'].hadoopJob.mainJarFileUri
        #         * jobs['step-id'].hiveJob.queryFileUri
        #         * jobs['step-id'].pySparkJob.mainPythonFileUri
        #         * jobs['step-id'].hadoopJob.jarFileUris[0]
        #         * jobs['step-id'].hadoopJob.archiveUris[0]
        #         * jobs['step-id'].hadoopJob.fileUris[0]
        #         * jobs['step-id'].pySparkJob.pythonFileUris[0]
        #
        #     * Items in repeated fields can be referenced by a zero-based index:
        #         * jobs['step-id'].sparkJob.args[0]
        #
        #     * Other examples:
        #         * jobs['step-id'].hadoopJob.properties['key']
        #         * jobs['step-id'].hadoopJob.args[0]
        #         * jobs['step-id'].hiveJob.scriptVariables['key']
        #         * jobs['step-id'].hadoopJob.mainJarFileUri
        #         * placement.clusterSelector.zone
        #
        #     It may not be possible to parameterize maps and repeated fields in their
        #     entirety since only individual map values and individual items in repeated
        #     fields can be referenced. For example, the following field paths are
        #     invalid:
        #
        #     - placement.clusterSelector.clusterLabels
        #     - jobs['step-id'].sparkJob.args
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Brief description of the parameter.
        #     Must not exceed 1024 characters.
        # @!attribute [rw] validation
        #   @return [::Google::Cloud::Dataproc::V1::ParameterValidation]
        #     Optional. Validation rules to be applied to this parameter's value.
        class TemplateParameter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for parameter validation.
        # @!attribute [rw] regex
        #   @return [::Google::Cloud::Dataproc::V1::RegexValidation]
        #     Validation based on regular expressions.
        # @!attribute [rw] values
        #   @return [::Google::Cloud::Dataproc::V1::ValueValidation]
        #     Validation based on a list of allowed values.
        class ParameterValidation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Validation based on regular expressions.
        # @!attribute [rw] regexes
        #   @return [::Array<::String>]
        #     Required. RE2 regular expressions used to validate the parameter's value.
        #     The value must match the regex in its entirety (substring
        #     matches are not sufficient).
        class RegexValidation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Validation based on a list of allowed values.
        # @!attribute [rw] values
        #   @return [::Array<::String>]
        #     Required. List of allowed values for the parameter.
        class ValueValidation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Dataproc workflow template resource.
        # @!attribute [r] template
        #   @return [::String]
        #     Output only. The resource name of the workflow template as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}`
        #
        #     * For `projects.locations.workflowTemplates`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
        # @!attribute [r] version
        #   @return [::Integer]
        #     Output only. The version of template at the time of
        #     workflow instantiation.
        # @!attribute [r] create_cluster
        #   @return [::Google::Cloud::Dataproc::V1::ClusterOperation]
        #     Output only. The create cluster operation metadata.
        # @!attribute [r] graph
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowGraph]
        #     Output only. The workflow graph.
        # @!attribute [r] delete_cluster
        #   @return [::Google::Cloud::Dataproc::V1::ClusterOperation]
        #     Output only. The delete cluster operation metadata.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowMetadata::State]
        #     Output only. The workflow state.
        # @!attribute [r] cluster_name
        #   @return [::String]
        #     Output only. The name of the target cluster.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Map from parameter names to values that were used for those parameters.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Workflow start time.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Workflow end time.
        # @!attribute [r] cluster_uuid
        #   @return [::String]
        #     Output only. The UUID of target cluster.
        # @!attribute [r] dag_timeout
        #   @return [::Google::Protobuf::Duration]
        #     Output only. The timeout duration for the DAG of jobs, expressed in seconds
        #     (see [JSON representation of
        #     duration](https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # @!attribute [r] dag_start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. DAG start time, only set for workflows with
        #     {::Google::Cloud::Dataproc::V1::WorkflowMetadata#dag_timeout dag_timeout} when
        #     DAG begins.
        # @!attribute [r] dag_end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. DAG end time, only set for workflows with
        #     {::Google::Cloud::Dataproc::V1::WorkflowMetadata#dag_timeout dag_timeout} when
        #     DAG ends.
        class WorkflowMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ParametersEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The operation state.
          module State
            # Unused.
            UNKNOWN = 0

            # The operation has been created.
            PENDING = 1

            # The operation is running.
            RUNNING = 2

            # The operation is done; either cancelled or completed.
            DONE = 3
          end
        end

        # The cluster operation triggered by a workflow.
        # @!attribute [r] operation_id
        #   @return [::String]
        #     Output only. The id of the cluster operation.
        # @!attribute [r] error
        #   @return [::String]
        #     Output only. Error, if operation failed.
        # @!attribute [r] done
        #   @return [::Boolean]
        #     Output only. Indicates the operation is done.
        class ClusterOperation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The workflow graph.
        # @!attribute [r] nodes
        #   @return [::Array<::Google::Cloud::Dataproc::V1::WorkflowNode>]
        #     Output only. The workflow nodes.
        class WorkflowGraph
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The workflow node.
        # @!attribute [r] step_id
        #   @return [::String]
        #     Output only. The name of the node.
        # @!attribute [r] prerequisite_step_ids
        #   @return [::Array<::String>]
        #     Output only. Node's prerequisite nodes.
        # @!attribute [r] job_id
        #   @return [::String]
        #     Output only. The job id; populated after the node enters RUNNING state.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowNode::NodeState]
        #     Output only. The node state.
        # @!attribute [r] error
        #   @return [::String]
        #     Output only. The error detail.
        class WorkflowNode
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The workflow node state.
          module NodeState
            # State is unspecified.
            NODE_STATE_UNSPECIFIED = 0

            # The node is awaiting prerequisite node to finish.
            BLOCKED = 1

            # The node is runnable but not running.
            RUNNABLE = 2

            # The node is running.
            RUNNING = 3

            # The node completed successfully.
            COMPLETED = 4

            # The node failed. A node can be marked FAILED because
            # its ancestor or peer failed.
            FAILED = 5
          end
        end

        # A request to create a workflow template.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the region or location, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates.create`, the resource name of the
        #       region has the following format:
        #       `projects/{project_id}/regions/{region}`
        #
        #     * For `projects.locations.workflowTemplates.create`, the resource name of
        #       the location has the following format:
        #       `projects/{project_id}/locations/{location}`
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowTemplate]
        #     Required. The Dataproc workflow template to create.
        class CreateWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to fetch a workflow template.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the workflow template, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates.get`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}`
        #
        #     * For `projects.locations.workflowTemplates.get`, the resource name of the
        #       template has the following format:
        #       `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
        # @!attribute [rw] version
        #   @return [::Integer]
        #     Optional. The version of workflow template to retrieve. Only previously
        #     instantiated versions can be retrieved.
        #
        #     If unspecified, retrieves the current version.
        class GetWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to instantiate a workflow template.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the workflow template, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates.instantiate`, the resource name
        #     of the template has the following format:
        #       `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}`
        #
        #     * For `projects.locations.workflowTemplates.instantiate`, the resource name
        #       of the template has the following format:
        #       `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
        # @!attribute [rw] version
        #   @return [::Integer]
        #     Optional. The version of workflow template to instantiate. If specified,
        #     the workflow will be instantiated only if the current version of
        #     the workflow template has the supplied version.
        #
        #     This option cannot be used to instantiate a previous version of
        #     workflow template.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A tag that prevents multiple concurrent workflow
        #     instances with the same tag from running. This mitigates risk of
        #     concurrent instances started due to retries.
        #
        #     It is recommended to always set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The tag must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Map from parameter names to values that should be used for those
        #     parameters. Values may not exceed 1000 characters.
        class InstantiateWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ParametersEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A request to instantiate an inline workflow template.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the region or location, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates,instantiateinline`, the resource
        #       name of the region has the following format:
        #       `projects/{project_id}/regions/{region}`
        #
        #     * For `projects.locations.workflowTemplates.instantiateinline`, the
        #       resource name of the location has the following format:
        #       `projects/{project_id}/locations/{location}`
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowTemplate]
        #     Required. The workflow template to instantiate.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A tag that prevents multiple concurrent workflow
        #     instances with the same tag from running. This mitigates risk of
        #     concurrent instances started due to retries.
        #
        #     It is recommended to always set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The tag must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        class InstantiateInlineWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update a workflow template.
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Dataproc::V1::WorkflowTemplate]
        #     Required. The updated workflow template.
        #
        #     The `template.version` field must match the current version.
        class UpdateWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list workflow templates in a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the region or location, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates,list`, the resource
        #       name of the region has the following format:
        #       `projects/{project_id}/regions/{region}`
        #
        #     * For `projects.locations.workflowTemplates.list`, the
        #       resource name of the location has the following format:
        #       `projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return in each response.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The page token, returned by a previous call, to request the
        #     next page of results.
        class ListWorkflowTemplatesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to a request to list workflow templates in a project.
        # @!attribute [r] templates
        #   @return [::Array<::Google::Cloud::Dataproc::V1::WorkflowTemplate>]
        #     Output only. WorkflowTemplates list.
        # @!attribute [r] next_page_token
        #   @return [::String]
        #     Output only. This token is included in the response if there are more
        #     results to fetch. To fetch additional results, provide this value as the
        #     page_token in a subsequent <code>ListWorkflowTemplatesRequest</code>.
        class ListWorkflowTemplatesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete a workflow template.
        #
        # Currently started workflows will remain running.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the workflow template, as described
        #     in https://cloud.google.com/apis/design/resource_names.
        #
        #     * For `projects.regions.workflowTemplates.delete`, the resource name
        #     of the template has the following format:
        #       `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}`
        #
        #     * For `projects.locations.workflowTemplates.instantiate`, the resource name
        #       of the template has the following format:
        #       `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
        # @!attribute [rw] version
        #   @return [::Integer]
        #     Optional. The version of workflow template to delete. If specified,
        #     will only delete the template if the current server version matches
        #     specified version.
        class DeleteWorkflowTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
