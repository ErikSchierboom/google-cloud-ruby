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
  module Api
    # A simple descriptor of a resource type.
    #
    # ResourceDescriptor annotates a resource message (either by means of a
    # protobuf annotation or use in the service config), and associates the
    # resource's schema, the resource type, and the pattern of the resource name.
    #
    # Example:
    #
    #     message Topic {
    #       // Indicates this message defines a resource schema.
    #       // Declares the resource type in the format of {service}/{kind}.
    #       // For Kubernetes resources, the format is {api group}/{kind}.
    #       option (google.api.resource) = {
    #         type: "pubsub.googleapis.com/Topic"
    #         pattern: "projects/{project}/topics/{topic}"
    #       };
    #     }
    #
    # The ResourceDescriptor Yaml config will look like:
    #
    #     resources:
    #     - type: "pubsub.googleapis.com/Topic"
    #       pattern: "projects/{project}/topics/{topic}"
    #
    # Sometimes, resources have multiple patterns, typically because they can
    # live under multiple parents.
    #
    # Example:
    #
    #     message LogEntry {
    #       option (google.api.resource) = {
    #         type: "logging.googleapis.com/LogEntry"
    #         pattern: "projects/{project}/logs/{log}"
    #         pattern: "folders/{folder}/logs/{log}"
    #         pattern: "organizations/{organization}/logs/{log}"
    #         pattern: "billingAccounts/{billing_account}/logs/{log}"
    #       };
    #     }
    #
    # The ResourceDescriptor Yaml config will look like:
    #
    #     resources:
    #     - type: 'logging.googleapis.com/LogEntry'
    #       pattern: "projects/{project}/logs/{log}"
    #       pattern: "folders/{folder}/logs/{log}"
    #       pattern: "organizations/{organization}/logs/{log}"
    #       pattern: "billingAccounts/{billing_account}/logs/{log}"
    # @!attribute [rw] type
    #   @return [::String]
    #     The resource type. It must be in the format of
    #     \\{service_name}/\\{resource_type_kind}. The `resource_type_kind` must be
    #     singular and must not include version numbers.
    #
    #     Example: `storage.googleapis.com/Bucket`
    #
    #     The value of the resource_type_kind must follow the regular expression
    #     /[A-Za-z][a-zA-Z0-9]+/. It should start with an upper case character and
    #     should use PascalCase (UpperCamelCase). The maximum number of
    #     characters allowed for the `resource_type_kind` is 100.
    # @!attribute [rw] pattern
    #   @return [::Array<::String>]
    #     Optional. The relative resource name pattern associated with this resource
    #     type. The DNS prefix of the full resource name shouldn't be specified here.
    #
    #     The path pattern must follow the syntax, which aligns with HTTP binding
    #     syntax:
    #
    #         Template = Segment { "/" Segment } ;
    #         Segment = LITERAL | Variable ;
    #         Variable = "{" LITERAL "}" ;
    #
    #     Examples:
    #
    #         - "projects/\\{project}/topics/\\{topic}"
    #         - "projects/\\{project}/knowledgeBases/\\{knowledge_base}"
    #
    #     The components in braces correspond to the IDs for each resource in the
    #     hierarchy. It is expected that, if multiple patterns are provided,
    #     the same component name (e.g. "project") refers to IDs of the same
    #     type of resource.
    # @!attribute [rw] name_field
    #   @return [::String]
    #     Optional. The field on the resource that designates the resource name
    #     field. If omitted, this is assumed to be "name".
    # @!attribute [rw] history
    #   @return [::Google::Api::ResourceDescriptor::History]
    #     Optional. The historical or future-looking state of the resource pattern.
    #
    #     Example:
    #
    #         // The InspectTemplate message originally only supported resource
    #         // names with organization, and project was added later.
    #         message InspectTemplate {
    #           option (google.api.resource) = {
    #             type: "dlp.googleapis.com/InspectTemplate"
    #             pattern:
    #             "organizations/{organization}/inspectTemplates/{inspect_template}"
    #             pattern: "projects/{project}/inspectTemplates/{inspect_template}"
    #             history: ORIGINALLY_SINGLE_PATTERN
    #           };
    #         }
    # @!attribute [rw] plural
    #   @return [::String]
    #     The plural name used in the resource name and permission names, such as
    #     'projects' for the resource name of 'projects/\\{project}' and the permission
    #     name of 'cloudresourcemanager.googleapis.com/projects.get'. It is the same
    #     concept of the `plural` field in k8s CRD spec
    #     https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
    #
    #     Note: The plural form is required even for singleton resources. See
    #     https://aip.dev/156
    # @!attribute [rw] singular
    #   @return [::String]
    #     The same concept of the `singular` field in k8s CRD spec
    #     https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
    #     Such as "project" for the `resourcemanager.googleapis.com/Project` type.
    # @!attribute [rw] style
    #   @return [::Array<::Google::Api::ResourceDescriptor::Style>]
    #     Style flag(s) for this resource.
    #     These indicate that a resource is expected to conform to a given
    #     style. See the specific style flags for additional information.
    class ResourceDescriptor
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # A description of the historical or future-looking state of the
      # resource pattern.
      module History
        # The "unset" value.
        HISTORY_UNSPECIFIED = 0

        # The resource originally had one pattern and launched as such, and
        # additional patterns were added later.
        ORIGINALLY_SINGLE_PATTERN = 1

        # The resource has one pattern, but the API owner expects to add more
        # later. (This is the inverse of ORIGINALLY_SINGLE_PATTERN, and prevents
        # that from being necessary once there are multiple patterns.)
        FUTURE_MULTI_PATTERN = 2
      end

      # A flag representing a specific style that a resource claims to conform to.
      module Style
        # The unspecified value. Do not use.
        STYLE_UNSPECIFIED = 0

        # This resource is intended to be "declarative-friendly".
        #
        # Declarative-friendly resources must be more strictly consistent, and
        # setting this to true communicates to tools that this resource should
        # adhere to declarative-friendly expectations.
        #
        # Note: This is used by the API linter (linter.aip.dev) to enable
        # additional checks.
        DECLARATIVE_FRIENDLY = 1
      end
    end

    # Defines a proto annotation that describes a string field that refers to
    # an API resource.
    # @!attribute [rw] type
    #   @return [::String]
    #     The resource type that the annotated field references.
    #
    #     Example:
    #
    #         message Subscription {
    #           string topic = 2 [(google.api.resource_reference) = {
    #             type: "pubsub.googleapis.com/Topic"
    #           }];
    #         }
    #
    #     Occasionally, a field may reference an arbitrary resource. In this case,
    #     APIs use the special value * in their resource reference.
    #
    #     Example:
    #
    #         message GetIamPolicyRequest {
    #           string resource = 2 [(google.api.resource_reference) = {
    #             type: "*"
    #           }];
    #         }
    # @!attribute [rw] child_type
    #   @return [::String]
    #     The resource type of a child collection that the annotated field
    #     references. This is useful for annotating the `parent` field that
    #     doesn't have a fixed resource type.
    #
    #     Example:
    #
    #         message ListLogEntriesRequest {
    #           string parent = 1 [(google.api.resource_reference) = {
    #             child_type: "logging.googleapis.com/LogEntry"
    #           };
    #         }
    class ResourceReference
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
