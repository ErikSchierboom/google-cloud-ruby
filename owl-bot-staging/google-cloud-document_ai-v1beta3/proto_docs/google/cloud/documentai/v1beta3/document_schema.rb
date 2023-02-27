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
    module DocumentAI
      module V1beta3
        # The schema defines the output of the processed document by a processor.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Display name to show to users.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the schema.
        # @!attribute [rw] entity_types
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::DocumentSchema::EntityType>]
        #     Entity types of the schema.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentSchema::Metadata]
        #     Metadata of the schema.
        class DocumentSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # EntityType is the wrapper of a label of the corresponding model with
          # detailed attributes and limitations for entity-based processors. Multiple
          # types can also compose a dependency tree to represent nested types.
          # @!attribute [rw] enum_values
          #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentSchema::EntityType::EnumValues]
          #     If specified, lists all the possible values for this entity.  This
          #     should not be more than a handful of values.  If the number of values
          #     is >10 or could change frequently use the `EntityType.value_ontology`
          #     field and specify a list of all possible values in a value ontology
          #     file.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     User defined name for the type.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name of the type. It must be unique within the schema file and
          #     cannot be a 'Common Type'.  Besides that we use the following naming
          #     conventions:
          #
          #     - *use `snake_casing`*
          #     - name matching is case-sensitive
          #     - Maximum 64 characters.
          #     - Must start with a letter.
          #     - Allowed characters: ASCII letters `[a-z0-9_-]`.  (For backward
          #       compatibility internal infrastructure and tooling can handle any ascii
          #       character)
          #     - The `/` is sometimes used to denote a property of a type.  For example
          #       `line_item/amount`.  This convention is deprecated, but will still be
          #       honored for backward compatibility.
          # @!attribute [rw] base_types
          #   @return [::Array<::String>]
          #     The entity type that this type is derived from.  For now, one and only
          #     one should be set.
          # @!attribute [rw] properties
          #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::DocumentSchema::EntityType::Property>]
          #     Describing the nested structure, or composition of an entity.
          class EntityType
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Defines the a list of enum values.
            # @!attribute [rw] values
            #   @return [::Array<::String>]
            #     The individual values that this enum values type can include.
            class EnumValues
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Defines properties that can be part of the entity type.
            # @!attribute [rw] name
            #   @return [::String]
            #     The name of the property.  Follows the same guidelines as the
            #     EntityType name.
            # @!attribute [rw] value_type
            #   @return [::String]
            #     A reference to the value type of the property.  This type is subject
            #     to the same conventions as the `Entity.base_types` field.
            # @!attribute [rw] occurrence_type
            #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentSchema::EntityType::Property::OccurrenceType]
            #     Occurrence type limits the number of instances an entity type appears
            #     in the document.
            class Property
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Types of occurrences of the entity type in the document.  Note: this
              # represents the number of instances of an entity types, not number of
              # mentions of a given entity instance.
              module OccurrenceType
                # Unspecified occurrence type.
                OCCURRENCE_TYPE_UNSPECIFIED = 0

                # There will be zero or one instance of this entity type.
                OPTIONAL_ONCE = 1

                # The entity type will appear zero or multiple times.
                OPTIONAL_MULTIPLE = 2

                # The entity type will only appear exactly once.
                REQUIRED_ONCE = 3

                # The entity type will appear once or more times.
                REQUIRED_MULTIPLE = 4
              end
            end
          end

          # Metadata for global schema behavior.
          # @!attribute [rw] document_splitter
          #   @return [::Boolean]
          #     If true, a `document` entity type can be applied to subdocument (
          #     splitting). Otherwise, it can only be applied to the entire document
          #     (classification).
          # @!attribute [rw] document_allow_multiple_labels
          #   @return [::Boolean]
          #     If true, on a given page, there can be multiple `document` annotations
          #     covering it.
          # @!attribute [rw] prefixed_naming_on_properties
          #   @return [::Boolean]
          #     If set, all the nested entities must be prefixed with the parents.
          # @!attribute [rw] skip_naming_validation
          #   @return [::Boolean]
          #     If set, we will skip the naming format validation in the schema. So the
          #     string values in `DocumentSchema.EntityType.name` and
          #     `DocumentSchema.EntityType.Property.name` will not be checked.
          class Metadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
